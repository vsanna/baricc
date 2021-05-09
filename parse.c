#include "9cc.h"

Token* token;
char* user_input;
LVar* locals[100];
LVar* globals[100];  // TODO: globals doesn't need to be array
int cur_scope_depth = 0;
StringToken* strings;
// Type* structs[100];  // TODO: at most 100 struct defs
// int struct_def_index = 0;
Tag* tags;
EnumVar* enum_vars;
Node* current_switch = NULL;

/**************************
 * node builder
 * *************************/
Node* new_node(NodeKind kind) {
    Node* node = calloc(1, sizeof(Node));
    node->kind = kind;
    return node;
}

Node* new_binary(NodeKind kind, Node* lhs, Node* rhs) {
    Node* node = new_node(kind);
    node->lhs = lhs;
    node->rhs = rhs;
    return node;
};

// a util function to build num node
Node* new_num(int val) {
    Node* node = new_node(ND_NUM);
    node->val = val;
    return node;
}

// a util function to build string node
Node* new_string(StringToken* str) {
    Node* node = new_node(ND_STRING);
    node->string = str;
    return node;
}

// How many function/global variables/global typedef this compiler supports.
// TODO replace Node*[] -> Node**
extern Node* code[1000];

/**************************
 * parse functions
 * *************************/
// program ::= ( func_def
//             | define_variable ";"
//             | "struct" define_struct ";"
//             | "enum" define_enum ";"
//             )*
// programをまずは関数の束とする
void program() {
    int i = 0;
    while (!at_eof()) {
        Token* tk = token;
        if (consume_kind(TK_TYPEDEF)) {
            define_typedef();
            continue;
        }

        if (check_kind(TK_ENUM)) {
            define_enum();
            int debug;
            expect(";");
            continue;
        }

        // TODO: if(check_kind(TK_STRUCT)) にしたい

        Define* def = read_define_head();
        if (def == NULL) {
            error0("def is NULL");
            print_token(token);
        }
        if (consume("(")) {
            // 関数定義
            code[i] = func_def(def);
        } else if (def->type->ty == STRUCT) {
            // TODO: check_kindは消せるかも
            define_struct();
            expect(";");
            continue;
        } else {
            // global変数の定義
            Node* gvar = define_variable(def, globals);
            // TODO: ここでkind付け替えは良くない。後で直す
            gvar->kind = ND_GVAR_DEF;
            code[i] = gvar;
            expect(";");
        }
        i++;
    }
    code[i] = NULL;
}

// typedef struct Hoge {int a;} Gegi;
// typedef struct Hoge Geho;
// typedef int INT;
// typedef char* String;
// define_typedef ::= "typedef" type_decl alias ";"
bool define_typedef() {
    // TODO: do consume_kind(TK_TYPEDEF) here
    Define* def = read_define_head();
    read_define_head(def);

    // TODO: should not expect ";" here.
    expect(";");

    // type(struct)をident(alias)で登録
    char* alias_name = calloc(100, sizeof(char));
    memcpy(alias_name, def->ident->str, def->ident->len);
    push_tag(alias_name, def->type);
    return true;
}

// enum Hoge { A = 100, B = 200}
Type* define_enum() {
    if (!consume_kind(TK_ENUM)) {
        return NULL;
    }

    Token* name = consume_kind(TK_IDENT);

    if (name && !check("{")) {
        Tag* tag = find_tag(name);
        if (!tag) {
            error0("type not found.");
        }
        return tag->type;  // intが変えるはず
    }

    expect("{");
    int num = 0;
    while (true) {
        // NOTE: 末尾に,がついていてもOK
        if (consume("}")) {
            break;
        }
        // AAA = 10,
        // or
        // AAA,
        Token* n = consume_kind(TK_IDENT);

        if (consume("=")) {
            num = expect_number();
        } else {
            num += 1;
        }

        EnumVar* e = calloc(1, sizeof(EnumVar));
        e->name = calloc(100, sizeof(char));
        memcpy(e->name, n->str, n->len);
        e->value = num;
        e->next = enum_vars;
        enum_vars = e;

        // define_variable(def, globals);
        if (consume("}")) {
            break;
        }
        expect(",");
    }

    // register to tags
    if (name) {
        char* namestr = calloc(name->len, sizeof(char));
        memcpy(namestr, name->str, name->len);
        push_tag(namestr, int_type());
    }

    int debug;

    return int_type();
}

Type* int_type() {
    Type* t = calloc(1, sizeof(Type));
    t->ty = INT;
    t->size = 4;
    return t;
}
Type* char_type() {
    Type* t = calloc(1, sizeof(Type));
    t->ty = CHAR;
    t->size = 1;
    return t;
}

// structを定義orlookupしてその型を返す
// NOTE: struct自体は何かをアセンブラに吐き出すわけではない(compilerだけが持つ情報)なのでnode不要
// define_struct = "struct" tag(ident)? "{" (define_variable ";")* "}"
//                  ^start
// STRUCTのtypeを返す
Type* define_struct() {
    if (!consume_kind(TK_STRUCT)) {
        return NULL;
    }

    Token* name = consume_kind(TK_IDENT);

    // nameがあってすでに定義済みのstructの場合は struct Hoge h; のように定義できるので、そのtypeを引っ張ってくる
    // TODO: 定義済みならそのoverrideを許さず、{}が続いたらエラー
    if (name && !check("{")) {
        Tag* tag = find_tag(name);
        if (!tag) {
            error0("type not found.");
        }
        return tag->type;
    }

    expect("{");

    Type* struct_type = calloc(1, sizeof(Type));
    struct_type->ty = STRUCT;

    Member head;
    Member* cur = &head;
    //  = calloc(1, sizeof(Member));

    // TODO: tag名に対応
    // Token* name = consume_kind(TK_IDENT);
    // TODO なにここのwhile
    int offset = 0;
    int maxSize = 0;
    while (!consume("}")) {
        // 型情報を取得し
        Define* def = read_define_head();
        read_define_suffix(def);
        expect(";");
        // membersにつめる
        //// name
        Member* m = calloc(1, sizeof(Member));
        m->name = calloc(100, sizeof(char));
        memcpy(m->name, def->ident->str, def->ident->len);

        //// type
        m->ty = def->type;
        int size = get_type_size(def->type);

        /*
        // TODO: 配列でうまく行かない?

        struct {
            int a;
            char b;
            int c;
        }

        a: offset = 4
        b: offset = 5
        c: offset = 12
        */
        // TODO: ココを理解する
        offset = align_to(offset, size);
        m->offset = offset;
        offset += size;
        cur->next = m;
        cur = m;

        // TODO: なにこれ
        if (maxSize <= 8 && maxSize <= size) {
            maxSize = size;
        }
    }

    struct_type->members = head.next;
    struct_type->size = align_to(offset, maxSize);

    // register to tags
    if (name) {
        // TODO: これが必要な理由. tag名に struct を入れるのはなぜ?
        // char* struct_prefix = "struct ";
        // char* namestr = calloc(name->len + strlen(struct_prefix), sizeof(char));
        // memcpy(namestr, struct_prefix, strlen(struct_prefix));
        // memcpy(namestr + strlen(struct_prefix), name->str, name->len);
        char* namestr = calloc(name->len, sizeof(char));
        memcpy(namestr, name->str, name->len);
        push_tag(namestr, struct_type);
    }

    return struct_type;
}

// func_def = type-annotation ident "(" ("int" ident ("," "int" ident)*)? ")"
//                                       ^start
// block.
// type-annotation ident までは読み込み済み
Node* func_def(Define* def) {
    // TODO: 本当? 呼び出しごとでは?
    cur_scope_depth++;
    Node* node;

    // 関数定義
    node = new_node(ND_FUNC_DEF);
    node->funcname = calloc(100, sizeof(char));
    memcpy(node->funcname, def->ident->str, def->ident->len);
    node->args = calloc(10, sizeof(char*));
    node->block = calloc(100, sizeof(Node));

    // function args
    for (int i = 0; !consume(")"); i++) {
        if (i != 0) {
            expect(",");
        }

        Define* arg_def = read_define_head();
        if (arg_def == NULL) {
            char* name[100] = {0};
            memcpy(name, token->str, token->len);
            error1("invalid token comes here. %d", name);
        }

        Node* variable_node = define_variable(arg_def, locals);
        node->args[i] = variable_node;
    }

    // function body
    node->lhs = block();

    return node;
}

// stmt = expr ";"
//        | "return" expr ";"
//        | "if" "(" expr ")" stmt ("else" stmt)?
//        | "while" "(" expr ")" stmt
//        | "for" "(" expr? ";" expr? ";" expr? ")" stmt
//        | define_variable ";"
//        | block
//        | "break" ";"
//        | "continue" ";"
//        | ("--" | "++") ident
//        | ident ("--" | "++")
//        consume_kindココでしてるからそれもdefineにもってく
Node* stmt() {
    Node* node;

    if (consume_kind(TK_RETURN)) {
        node = new_node(ND_RETURN);
        node->lhs = expr();  // lhsだけ持つとする
        expect(";");
        return node;
    }

    if (consume_kind(TK_IF)) {
        /*
        # elseなし
        if -lhs- cond
           -rhs- main

        # elseあり
        if -lhs- cond
           -rhs- else -lhs- main
                      -rhs- alt(stmt)
        */
        node = new_node(ND_IF);
        expect("(");
        node->lhs = expr();  // lhsをcondとする
        expect(")");
        node->rhs = stmt();
        if (consume_kind(TK_ELSE)) {
            Node* els = new_node(ND_ELSE);
            els->lhs = node->rhs;
            els->rhs = stmt();
            node->rhs = els;
        }
        return node;
    }

    if (consume_kind(TK_WHILE)) {
        Node* node = new_node(ND_WHILE);
        expect("(");
        node->lhs = expr();
        expect(")");
        node->rhs = stmt();
        return node;
    }

    if (consume_kind(TK_SWITCH)) {
        /*
            switch(expr) {
                case int:
                    stmt*
                    (break;)*
                default:
                    stmt*
            }
        */
        int debug;
        Node* node = new_node(ND_SWITCH);
        expect("(");
        node->lhs = expr();  // switch's flag expr
        expect(")");

        // TODO: why escaping here
        Node* sw = current_switch;
        current_switch = node;

        // ND_BLOCK comes here, and it has many ND_CASE and one ND_DEFAULT stmt
        node->rhs = stmt();

        current_switch = sw;
        return node;
    }

    if (consume_kind(TK_CASE)) {
        /*
            consider `case 1:` this line as one stmt which outputs label only.
        */
        if (!current_switch) {
            error0("stray case");
        }
        // TODO: we should be able to use enum here as well
        // TODO: we also should be able to use expr
        int val = expect_number();
        expect(":");
        Node* node = new_node(ND_CASE);
        node->val = val;
        // NOTE: To check labels from the top one.
        node->next_case = current_switch->next_case;
        current_switch->next_case = node;
        return node;
    }

    if (consume_kind(TK_DEFAULT)) {
        /*
            consider `default:` this line as one stmt which outputs label only.
        */
        if (!current_switch) {
            error0("stray case");
        }
        Node* default_node = new_node(ND_CASE);
        expect(":");
        current_switch->default_case = default_node;
        return default_node;
    }

    if (consume_kind(TK_FOR)) {
        // leftは初期化と終了条件を、
        // rightは後処理とstmtを保持
        Node* node = new_node(ND_FOR);
        Node* left = new_node(ND_FOR_LEFT);
        Node* right = new_node(ND_FOR_RIGHT);
        node->lhs = left;
        node->rhs = right;

        expect("(");
        if (!consume(";")) {
            left->lhs = expr();
            expect(";");
        }

        if (!consume(";")) {
            left->rhs = expr();
            expect(";");
        }

        if (!consume(")")) {
            right->lhs = expr();
            expect(")");
        }

        right->rhs = stmt();
        return node;
    }

    if (consume_kind(TK_BREAK)) {
        Node* node = new_node(ND_BREAK);
        expect(";");
        return node;
    }

    if (consume_kind(TK_CONTINUE)) {
        Node* node = new_node(ND_CONTINUE);
        expect(";");
        return node;
    }

    // TODO: 上とstyle合わせたい
    Node* block_node = block();
    if (block_node != NULL) {
        return block_node;
    }

    Define* def = read_define_head();
    if (def != NULL) {
        Node* node = define_variable(def, locals);
        // NOTE: ND_ASSIGNに変換
        node = local_variable_init(node);
        expect(";");
        return node;
    }

    node = expr();
    expect(";");
    return node;
}

// block = "{" stmt* "}"
Node* block() {
    Node* node = NULL;
    if (consume("{")) {
        node = new_node(ND_BLOCK);
        // TODO: 100行まで対応
        node->block = calloc(100, sizeof(Node));
        for (int i = 0; !consume("}"); i++) {
            node->block[i] = stmt();
        }
    }
    return node;
}

// expr ::= assign
Node* expr() { return assign(); }

// ココよりも下は代入の=の左辺 or 右辺. つまり一般的な式に相当するもの.
// TODO: exprをココで使いたい...が、cでは代入が式である
// assign ::= equality ("=" equality)?
Node* assign() {
    Node* node = conditional();

    if (consume("=")) {
        node = new_binary(ND_ASSIGN, node, conditional());
        return node;
    }

    if (consume("+=")) {
        Node* add =
            new_binary(ND_ADD, node, ptr_conversion(node, conditional()));
        node = new_binary(ND_ASSIGN, node, add);
        return node;
    }

    if (consume("-=")) {
        Node* sub =
            new_binary(ND_SUB, node, ptr_conversion(node, conditional()));
        node = new_binary(ND_ASSIGN, node, sub);
        return node;
    }
    if (consume("*=")) {
        Node* mul = new_node(ND_MUL);
        Node* right = conditional();
        mul->lhs = node;
        mul->rhs = right;
        node = new_binary(ND_ASSIGN, node, mul);
        return node;
    }
    if (consume("/=")) {
        Node* div = new_node(ND_DIV);
        Node* right = conditional();
        div->lhs = node;
        div->rhs = right;
        node = new_binary(ND_ASSIGN, node, div);
        return node;
    }

    return node;
}

// conditional ::= logor ("?" logor ":" logor)?
Node* conditional() {
    Node* node = logor();
    if (consume("?")) {
        Node* cond = node;
        Node* then = logor();
        expect(":");
        Node* alt = logor();

        Node* els = new_node(ND_ELSE);
        els->lhs = then;
        els->rhs = alt;
        Node* ternary = new_node(ND_TERNARY);
        ternary->lhs = cond;
        ternary->rhs = els;

        node = ternary;
    }

    return node;
}

Node* logor() {
    Node* node = logand();
    while (consume("||")) {
        // TODO: logorでなくていいのか
        node = new_binary(ND_LOGOR, node, logor());
    }
    return node;
}

Node* logand() {
    Node* node = bitor ();
    while (consume("&&")) {
        node = new_binary(ND_LOGAND, node, logand());
    }
    return node;
}

// TODO: よく理解する
Node* bitor () {
    Node* node = bitxor();
    while (consume("|")) {
        // TODO: bitorでなくてよいのか?
        node = new_binary(ND_BITOR, node, bitxor());
    }
    return node;
}

Node* bitxor() {
    Node* node = bitand();
    while (consume("^")) {
        node = new_binary(ND_BITXOR, node, bitxor());
    }
    return node;
}

Node*bitand() {
    Node* node = equality();
    while (consume("&")) {
        // TODO bitandでなくてよいのか?
        node = new_binary(ND_BITAND, node, equality());
    }
    return node;
}

// equality = relational ("==" relational | "!=" relational)*
Node* equality() {
    Node* node = relational();

    for (;;) {
        if (consume("==")) {
            node = new_binary(ND_EQ, node, relational());
        } else if (consume("!=")) {
            node = new_binary(ND_NE, node, relational());
        } else {
            return node;
        }
    }
}

// relational = add ("<" add | ">" add | "<=" add | ">=" add)*
Node* relational() {
    Node* node = add();

    for (;;) {
        // TODO: こっち先でよいの?
        // -> OK.
        // なぜならconsumeが見ているのは次のtokenなのですでに<か<=かは考慮済みなので
        if (consume("<")) {
            node = new_binary(ND_LT, node, add());
        } else if (consume("<=")) {
            node = new_binary(ND_LE, node, add());
        } else if (consume(">")) {
            node = new_binary(ND_LT, add(), node);
        } else if (consume(">=")) {
            node = new_binary(ND_LE, add(), node);
        } else {
            return node;
        }
    }
}

// add = mul("*" mul | "/" mul)*
Node* add() {
    Node* node = mul();

    for (;;) {
        if (consume("+")) {
            // if (node->type != NULL && node->type->ptr_to != NULL) {
            //     int size_of_type = get_type_size(node->type->ptr_to);
            //     node = new_binary(
            //         ND_ADD, node,
            //         new_binary(ND_MUL, mul(), new_num(size_of_type)));
            // } else {
            //     node = new_binary(ND_ADD, node, mul());
            // }
            node = new_binary(ND_ADD, node, ptr_conversion(node, mul()));
        } else if (consume("-")) {
            node = new_binary(ND_SUB, node, ptr_conversion(node, mul()));
            // if (node->type != NULL && node->type->ptr_to != NULL) {
            //     int size_of_type = get_type_size(node->type->ptr_to);
            //     node = new_binary(
            //         ND_SUB, node,
            //         new_binary(ND_MUL, mul(), new_num(size_of_type)));
            // } else {
            //     node = new_binary(ND_SUB, node, mul());
            // }
        } else {
            return node;
        }
    }
}

Node* ptr_conversion(Node* node, Node* right) {
    if (node->type && node->type->ptr_to) {
        int size_of_type = get_type_size(node->type->ptr_to);
        return new_binary(ND_MUL, right, new_num(size_of_type));
    }
    return right;
}

// mul = unary("*" unary| "/" unary)*
Node* mul() {
    Node* node = unary();
    for (;;) {
        if (consume("*")) {
            node = new_binary(ND_MUL, node, unary());
        } else if (consume("/")) {
            node = new_binary(ND_DIV, node, unary());
        } else {
            return node;
        }
    }
}

// unary = ("sizeof" | "+" | "-" | "*" | "&" | "++" | "--")? unary | primary
Node* unary() {
    // 前置++. ++a
    if (consume("++")) {
        return new_binary(ND_PRE_INC, unary(), NULL);
    }
    // 後置--. --a
    if (consume("--")) {
        return new_binary(ND_PRE_DEC, unary(), NULL);
    }

    if (consume("+")) {
        return unary();
    }
    if (consume("-")) {
        return new_binary(ND_SUB, new_num(0), unary());
    }
    if (consume("*")) {
        // TODO: unaryの部分はpointer型でなかったらエラーにするべき
        return new_binary(ND_DEREF, unary(), NULL);
    }
    if (consume("&")) {
        return new_binary(ND_ADDR, unary(), NULL);
    }
    if (consume("!")) {
        return new_binary(ND_NOT, unary(), NULL);
    }

    if (consume("~")) {
        return new_binary(ND_BITNOT, unary(), NULL);
    }

    // sizeof x: xのサイズを返す.
    if (consume_kind(TK_SIZEOF)) {
        // "sizeof" unaryにおけるunaryの末尾までtokenをすすめる
        // when tag(alias of type) is passed

        // when pure type is passed
        if ((check("(") && token->next->kind == TK_TYPE) ||
            check_kind(TK_TYPE)) {
            bool has_brace = false;
            if (consume("(")) {
                has_brace = true;
            }
            char* name = calloc(100, sizeof(char));
            memcpy(name, token->str, token->len);

            consume_kind(TK_TYPE);

            Node* size_of_type;
            if (strcmp(name, "int") == 0) {
                size_of_type = new_num(get_type_size(int_type()));
            } else if (strcmp(name, "char") == 0) {
                size_of_type = new_num(get_type_size(char_type()));
            } else {
                error1("invalid type name is passed here. %s", name);
            }
            if (has_brace) consume(")");
            return size_of_type;
        }

        // when struct / enum is passed
        if ((check("(") && (token->next->kind == TK_ENUM ||
                            token->next->kind == TK_STRUCT)) ||
            (check_kind(TK_ENUM) || check_kind(TK_STRUCT))) {
            bool has_brace = false;
            if (consume("(")) {
                has_brace = true;
            }
            Define* def = read_define_head();
            // read_define_suffix(def);
            Node* size_of_type = new_num(get_type_size(def->type));

            if (has_brace) consume(")");
            return size_of_type;
        }

        // when tag is pssed
        if ((check("(") && token->next->kind == TK_IDENT) ||
            (check_kind(TK_IDENT))) {
            bool has_brace = false;
            Tag* tag;
            if (check("(")) {
                tag = find_tag(token->next);
                if (tag) {
                    consume("(");
                }
                has_brace = true;
            } else {
                tag = find_tag(token);
            }

            if (tag) {
                consume_kind(TK_IDENT);
                Node* size_of_type = new_num(get_type_size(tag->type));

                if (has_brace) consume(")");
                return size_of_type;
            }
        }

        // when expr is passed here.
        Node* node = unary();
        int size;
        if (node->kind == ND_NUM) {
            size = 4;
        } else {
            Type* t = get_type(node);
            size = get_type_size(t);
        }

        return new_num(size);
    }

    return primary();
}

// primary = num
//           | ident ("(" (expr ",")* ")")?
//           | "(" expr ")"
//           | '""string'"'
// TODO: primaryにexpr入れたくない
Node* primary() {
    // 次のトークンが ( なら ( expr ) のハズ
    if (consume("(")) {
        Node* node = expr();
        expect(")");
        return node;
    }

    // ident
    Token* tok = consume_kind(TK_IDENT);
    if (tok) {
        // 関数呼び出しの場合
        if (consume("(")) {
            // node->blockに引数となるexprを詰める
            Node* node = new_node(ND_FUNC_CALL);
            node->funcname = calloc(100, sizeof(char));
            memcpy(node->funcname, tok->str, tok->len);
            // TODO: 引数とりあえず10こまで。
            node->block = calloc(10, sizeof(Node));
            for (int i = 0; !consume(")"); i++) {
                if (i != 0) {
                    expect(",");
                }
                node->block[i] = expr();
            }

            return node;
        }

        // enumの値がきたとき
        Node* num = find_enum_var(tok);
        if (num) {
            return num;
        }

        // TODO: type alias の場合
        // 変数定義と変数代入を両方やる

        // 変数呼び出しの場合
        return variable(tok);
    }

    // string
    if (tok = consume_kind(TK_STRING)) {
        // TODO: builder 関数を整理したい
        StringToken* s = calloc(1, sizeof(StringToken));
        s->value = calloc(100, sizeof(char));
        memcpy(s->value, tok->str, tok->len);
        if (strings) {
            s->index = strings->index + 1;
        } else {
            s->index = 0;
        }
        s->next = strings;
        Node* node = new_string(s);
        strings = s;
        return node;
    }

    // そうでなければnumのハズ
    return new_num(expect_number());
}

// stmtの一つ. 変数を宣言する.
// ND_LVARを返しつつ、LVarを作ってlocalsに追加する
// TODO: これは意味解析も一緒にやっちゃってないか? それはいいの?
// TODO: scopeが異なる変数が見つかった場合はエラーではないが,
// 同一scopeで見つかったらエラーみたいなことをするにはまたロジックを考える必要がある
// TODO: block切って同名/別型変数を宣言したときに既存言語でエラーになるかどうか
// NOTE: 型宣言の最初にいる状態で呼ばれる. *とidentの処理を行う
// define_variable = "int" "*"* ident ("=" 初期化式)
//                                    ^start/end
//                 | "int" "*"* ident "[" number "]" ("=" 初期化式)
//                                    ^start        ^end
Node* define_variable(Define* def, LVar** varlist) {
    if (def == NULL) {
        error0("invalid definition of function or variable");
    }

    read_define_suffix(def);

    Type* type = def->type;
    Token* tok = def->ident;

    Node* init = NULL;
    if (consume("=")) {
        /*
        TODO: なぜassignにせずにinitをもたせる形にしたのか...
        なぜならアセンブラとして吐き出したいコードがぜんぜん違うから。
        - assign: 左辺のアドレスをpush -> 右辺を評価 -> 右辺の値をpush -> 左辺のアドレスに右辺の値をmov
        - globalのinit: .data領域に書き込み
        - localのinit: 初期化式でのみ使える表現がある. よってだめ.

        > 初期化式は一見ただの代入式のように見えますが、実際は初期化式と代入式は文法的にかなり異なっていて、
        > 初期化式だけに許された特別な書き方というものがいくつかあります。
        > ここでその特別な書き方をきちんと把握しておきましょう。
        */
        if (consume("{")) {
            // TODO 最大100要素まで
            init = calloc(1, sizeof(Node));
            init->block = calloc(100, sizeof(Node));
            int i = 0;
            for (; !consume("}"); i++) {
                if (i != 0) {
                    expect(",");
                }

                init->block[i] = expr();
            }
            // 初期化子の数のほうがサイズよりも大きい場合はそちらでうわがく
            if (type->array_size < i) {
                type->array_size = i;
            }

            // int a[5] = {5} のとき
            // この時点で i = 1
            // array_size = 5

            // 不足分の要素を埋める
            for (; i < type->array_size; i++) {
                init->block[i] = new_num(0);
            }
        } else {
            init = expr();
            if (init->kind == ND_STRING) {
                int len = strlen(init->string->value) + 1;
                if (type->array_size < len) {
                    type->array_size = len;
                }
            }
        }
    }
    int size = get_type_size(type);

    Node* node = new_node(ND_LVAR);
    LVar* var = find_variable(tok);

    node->varname = calloc(100, sizeof(char));
    memcpy(node->varname, tok->str, tok->len);
    node->varsize = size;

    // 新規変数の定義なのでlvarあってはこまる
    if (var) {
        error1("redefining variable %s", node->varname);
    }

    // 新規変数なのでlvarを追加する
    var = calloc(1, sizeof(LVar));
    var->next = varlist[cur_scope_depth];
    var->name = tok->str;
    var->len = tok->len;
    var->type = type;
    var->kind = (varlist == locals) ? LOCAL : GLOBAL;
    var->init = init;

    // TODO: きれいにする
    int scope_depth = varlist == locals ? cur_scope_depth : 0;
    if (varlist[scope_depth] == NULL) {
        var->offset = size;
    } else {
        var->offset = varlist[scope_depth]->offset + size;
    }
    varlist[scope_depth] = var;

    // nodeを完成させる
    node->offset = varlist[scope_depth]->offset;
    node->type = type;
    node->kind = (var->kind == LOCAL) ? ND_LVAR : ND_GVAR;
    node->var = var;
    return node;
}

// Node* initializer(Type* type, int* size) {
//     Node* init = NULL;
//     if (consume("=")) {
//         /*
//         TODO: なぜassignにせずにinitをもたせる形にしたのか...
//         なぜならアセンブラとして吐き出したいコードがぜんぜん違うから。
//         - assign: 左辺のアドレスをpush -> 右辺を評価 -> 右辺の値をpush -> 左辺のアドレスに右辺の値をmov
//         - globalのinit: .data領域に書き込み
//         - localのinit: 初期化式でのみ使える表現がある. よってだめ.

//         > 初期化式は一見ただの代入式のように見えますが、実際は初期化式と代入式は文法的にかなり異なっていて、
//         > 初期化式だけに許された特別な書き方というものがいくつかあります。
//         > ここでその特別な書き方をきちんと把握しておきましょう。
//         */
//         if (consume("{")) {
//             // TODO 最大100要素まで
//             init = calloc(1, sizeof(Node));
//             init->block = calloc(100, sizeof(Node));
//             int i = 0;
//             for (; !consume("}"); i++) {
//                 if (i != 0) {
//                     expect(",");
//                 }

//                 init->block[i] = expr();
//             }
//             // 初期化子の数のほうがサイズよりも大きい場合はそちらでうわがく
//             if (type->array_size < i) {
//                 type->array_size = i;
//             }

//             // 不足分の要素を埋める
//             i++;
//             for (; i < type->array_size; i++) {
//                 init->block[i] = new_num(0);
//             }
//         } else {
//             init = expr();
//             if (init->kind == ND_STRING) {
//                 int len = type->array_size = strlen(init->string->value) + 1;
//                 if (type->array_size < len) {
//                     type->array_size = len;
//                 }
//             }
//         }
//     }

//     if (type->ty == ARRAY) {
//         if (type->array_size == 0) {
//             error1("array size is not defined.\n");
//         }
//         *size *= type->array_size;
//     }

//     return init;
// }

// a[1] ==> *(a+1)
// variable = ident ("[" num "]")?
//            ^start
Node* variable(Token* tok) {
    Node* node = new_node(ND_LVAR);
    LVar* lvar = find_variable(tok);
    if (lvar == NULL) {
        char* name[100] = {0};
        memcpy(name, tok->str, tok->len);
        error1("variable %s is not defined yet", name);
    }

    // すでに宣言済みの変数であればそのoffsetを使う
    node->offset = lvar->offset;
    node->type = lvar->type;

    // TODO: kindの付け替えはしたくない
    node->kind = (lvar->kind == LOCAL) ? ND_LVAR : ND_GVAR;
    node->varname = calloc(100, sizeof(char));
    memcpy(node->varname, tok->str, tok->len);

    Type* tp = node->type;
    bool has_index = false;

    // a.b[0]->c[2][4]
    while (true) {
        while (consume("[")) {
            has_index = true;
            // a[3] は *(a + 3) にする
            // DEREF -- ADD -- a
            //              -- MUL -- 3(expr)
            //                     -- sizeof(a)

            // 大きな1歩の中に小さな2歩
            // (a + 1)はあどれすで、[a + 1]が示す値もアドレス
            // int a[n][m]; にたいして、 a[1][2]を取得するには
            // DEREF( (a + sizeof(int * m: 1行のsize) * 1) + sizeof(int:
            // 1cellのサイズ) * 2 ) 最後にだけderefする
            Node* add = new_node(ND_ADD);
            add->lhs = node;  // 変数

            Node* index_val = new_num(expect_number());

            // NOTE:
            // ここのtype_sizeでみるのは要素のサイズなので常にptr_to一個先をみる
            add->rhs = new_binary(ND_MUL, index_val,
                                  new_num(get_type_size(tp->ptr_to)));
            tp = tp->ptr_to;
            // TODO: node(ND_LVAR)のtypeが配列のままなのにptrになっちゃってない?
            node = add;
            expect("]");
            continue;
        }
        if (has_index) {
            Node* deref_node = new_node(ND_DEREF);
            deref_node->lhs = node;
            node = deref_node;
        }

        // memberアクセス
        while (consume(".")) {
            node = struct_ref(node);
            continue;
        }

        // memberアクセス
        while (consume("->")) {
            Type* t =
                node->type
                    ->ptr_to;  // 今nodeはPTR of STRUCT のLVAR. その指すtype = STRUCTをとっておく
            Node* deref = new_node(ND_DEREF);
            deref->lhs =
                node;  // ここのnodeはLVAR. ただしptrのハズ. それをderefにわたすことで
            deref->type =
                t;  // deref node に structをセット. この時点でderefはa.bと同じ構造に変換されてる
            node = struct_ref(deref);
            continue;
        }

        // a++
        if (consume("++")) {
            node = new_binary(ND_SUF_INC, node, NULL);
            continue;
        }
        // a--
        if (consume("--")) {
            node = new_binary(ND_SUF_DEC, node, NULL);
            continue;
        }

        break;
    }

    return node;
}

// memberアクセス
Node* struct_ref(Node* node) {
    Node* member = new_node(ND_MEMBER);
    member->lhs = node;  // ベースオブジェクト
    member->member =
        find_member(consume_kind(TK_IDENT), node->type);  // 取得したいmember
    member->type = member->member->ty;
    node =
        member;  // ND_MEMBERはbaseのアドレス+memberのoffsetをpushするアセンブラを生成する
    return node;
}

Member* find_member(Token* tok, Type* type) {
    if (tok == NULL) {
        error0("member ident must come here");
    }
    if (type == NULL) {
        error0("member type is not found.");
    }

    char* member_name[100] = {0};
    memcpy(member_name, tok->str, tok->len);

    for (Member* m = type->members; m; m = m->next) {
        if (strcmp(member_name, m->name) == 0) {
            return m;
        }
    }

    error0("member ident is not found");
}

// まずlocal変数を探してなければglobal変数を探す
LVar* find_variable(Token* tok) {
    for (LVar* var = locals[cur_scope_depth]; var; var = var->next) {
        // NOTE: memcmpは一致していたら0を返す
        if (var->len == tok->len && !memcmp(tok->str, var->name, var->len)) {
            var->kind = LOCAL;
            return var;
        }
    }

    // TODO: globalsを配列でなくしてこの添字を消す
    for (LVar* var = globals[0]; var; var = var->next) {
        // NOTE: memcmpは一致していたら0を返す
        if (var->len == tok->len && !memcmp(tok->str, var->name, var->len)) {
            var->kind = GLOBAL;
            return var;
        }
    }
    return NULL;
}

// 初期化の=よりもあとから.
Node* local_variable_init(Node* node) {
    if (!node->var->init) {
        return node;
    }

    // 初期化式が配列
    // int a[2] = {1, 2};
    // を
    // int a[2];
    // a[0] = 1;
    // a[1] = 2;
    // として評価する
    //
    // 初期化式の数がarray_sizeに足りてない場合はzero値いれる

    // TODO: 真下の処理と統一
    if (node->var->init->kind == ND_STRING) {
        // 文字列の場合は各charをそれぞれ代入する形にする
        // NOTE: この時点ではnode->varは用意済み. ident/type入ってる. typeがarrayの場合もsize入れ込み済み
        Node* block = new_node(ND_BLOCK);
        block->block = calloc(node->var->type->array_size, sizeof(Node));

        int len = strlen(node->var->init->string->value);
        for (int i = 0; i < node->var->type->array_size; i++) {
            // a[0] ==> *(a + 0 * size)
            Node* add = new_node(ND_ADD);
            add->lhs = node;
            if (node->type && node->type->ptr_to) {
                int size = get_type_size(node->type->ptr_to);
                add->rhs = new_num(i * size);
            }
            Node* deref = new_node(ND_DEREF);
            deref->lhs = add;

            Node* assign = new_node(ND_ASSIGN);
            assign->lhs = deref;

            if (len > i) {
                assign->rhs = new_num(node->var->init->string->value[i]);
            } else {
                assign->rhs = new_num(0);
            }

            block->block[i] = assign;
        }

        return block;
    }

    if (node->var->init->block) {
        Node* block = new_node(ND_BLOCK);
        block->block = calloc(node->var->type->array_size, sizeof(Node));

        for (int i = 0; node->var->init->block[i]; i++) {
            // a[0] ==> *(a + 0 * size)
            Node* add = new_node(ND_ADD);
            add->lhs = node;
            if (node->type && node->type->ptr_to) {
                int size = get_type_size(node->type->ptr_to);
                add->rhs = new_num(i * size);
            }
            Node* deref = new_node(ND_DEREF);
            deref->lhs = add;

            Node* assign = new_node(ND_ASSIGN);
            assign->lhs = deref;
            assign->rhs = node->var->init->block[i];

            block->block[i] = assign;
        }

        return block;
    }

    Node* assign = new_node(ND_ASSIGN);
    assign->lhs = node;
    assign->rhs = node->var->init;

    return assign;
}

/**************************
 * utils
 * *************************/

// TODO: *(a + 1) * b の場合、bはint, aはptrだと、なんの型がかえる?
// 型を探す.
Type* get_type(Node* node) {
    if (node == NULL) {
        return NULL;
    }

    if (node->type) {
        return node->type;
    }

    // 先に左見て、なければ右みる
    Type* t = get_type(node->lhs);
    if (!t) {
        t = get_type(node->rhs);
    }

    // DEREFの場合はとってきたtypeの指す先を返す(型のderef)
    // TODO: ココよく理解する
    if (t && node->kind == ND_DEREF) {
        t = t->ptr_to;
        if (t == NULL) {
            error0("invalid dereference");
        }
        return t;
    }
    return t;
}

// 渡ってきたtypeのサイズを返す.
// INT -> 4
// PTR -> 8
// CHAR -> 1
int get_type_size(Type* type) {
    if (type == NULL) {
        error0("type should be non null");
    }

    int size;
    switch (type->ty) {
        case INT:
            return 4;
        case PTR:
            return 8;
        case CHAR:
            return 1;
        case ARRAY:
            if (type->array_size == 0) {
                error0("array size is zero.");
            }
            return get_type_size(type->ptr_to) * type->array_size;
        case STRUCT:
            // size = 0;
            // for (Member* m = type->members; m; m = m->next) {
            //     size += get_type_size(m->ty);
            // }
            // return size;
            return type->size;
        default:
            error0("unexpected Type->ty comes here");
    }
}

// TODO: type_prefixにrenameしてtype_suffixと連動させる
// 関数またはグローバル変数の定義の前半のみをreadする
// その読んだ情報をDefineをcontainerとして流用してそこに詰めて返す
// int** hoge までを読む.
// type_annotation = ("int"|"char") "*"*
// assume:  current token = int
// move to: current token = ident
Define* read_define_head() {
    Type* type = NULL;

    // for rollback
    Token* t = token;

    // read alias
    Token* ident = consume_kind(TK_IDENT);
    if (ident) {
        Tag* tag = find_tag(ident);
        if (tag) {
            type = tag->type;
        } else {
            // a = 1; のような式もココに入ってきてしまう
            token = t;  // rollback
        }
    }

    // read struct definition if possible
    if (type == NULL) {
        type = define_struct();
    }

    // read enum definition if possible
    bool is_enum = false;
    if (type == NULL) {
        type = define_enum();
        if (type) {
            is_enum = true;
        }
    }

    // if any type is not found so far yet,
    // try to read (("int" | "char") "*"* | "void")
    if (type == NULL) {
        Token* typeToken = consume_kind(TK_TYPE);
        if (typeToken == NULL) {
            return NULL;
        }

        type = calloc(1, sizeof(Type));
        int isChar = memcmp("char", typeToken->str, typeToken->len) == 0;

        // NOTE: handle void as an alias of int in this compiler.
        type->ty = isChar ? CHAR : INT;
    }
    while (consume("*")) {
        Type* t = calloc(1, sizeof(Type));
        t->ty = PTR;
        t->ptr_to = type;
        type = t;
    }

    if (type == NULL) {
        return NULL;
    }

    Node* node = NULL;
    Token* tok = consume_kind(TK_IDENT);

    // NOTE: struct/enumの定義時には型の直後に変数名不要.
    // TODO: refactor
    if (tok == NULL && type->ty != STRUCT && !is_enum) {
        print_type(type);
        error0("ident should come here.");
    }

    Define* def = calloc(1, sizeof(Define));
    def->type = type;
    def->ident = tok;

    return def;
}

// Defineのtypeに配列情報を付け加える. つまり型定義のsuffix部分をみる
void read_define_suffix(Define* def) {
    if (def == NULL) {
        error0("invalid definition of function or variable");
    }

    Type* type = def->type;
    Token* tok = def->ident;

    // check if it's array or not;
    while (consume("[")) {
        Type* t;
        t = calloc(1, sizeof(Type));
        t->ty = ARRAY;
        t->ptr_to = type;

        // size of array is optional.
        t->array_size = 0;
        Token* num = NULL;
        if (num = consume_kind(TK_NUM)) {
            t->array_size = num->val;
        }

        type = t;
        expect("]");
    }

    def->type = type;
}

// TODO: ココを理解
int align_to(int n, int align) { return (n + align - 1) & ~(align - 1); }

// global変数のtagsに追加する
void push_tag(char* name, Type* type) {
    Tag* tag = calloc(1, sizeof(Tag));
    tag->name = name;
    tag->type = type;
    if (tags != NULL) {
        tag->next = tags;
    }
    tags = tag;
}

Tag* find_tag(Token* tok) {
    char* name[100] = {0};
    memcpy(name, tok->str, tok->len);

    for (Tag* tag = tags; tag; tag = tag->next) {
        if (strcmp(tag->name, name) == 0) {
            return tag;
        }
    }

    return NULL;
}

// 変数名を受け取ってそれがenumに登録されていれば(ex. enum Hoge {AAA, BBB} のAAA, BBB)
Node* find_enum_var(Token* tok) {
    char* name[100] = {0};
    memcpy(name, tok->str, tok->len);

    for (EnumVar* e = enum_vars; e; e = e->next) {
        if (strcmp(e->name, name) == 0) {
            return new_num(e->value);
        }
    }

    return NULL;
}