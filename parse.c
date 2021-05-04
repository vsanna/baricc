#include "9cc.h"

Token* token;
char* user_input;
LVar* locals[100];
int cur_scope_depth = 0;

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

// 数字のnodeを作る特殊
Node* new_num(int val) {
    Node* node = new_node(ND_NUM);
    node->val = val;
    return node;
}

// 最大stmt数(仮)
// TODO: 100行まで対応
Node* code[100];

// program = func_def*
// programをまずは関数の束とする
void program() {
    int i = 0;
    while (!at_eof()) {
        code[i] = func_def();
        i++;
    }
    code[i] = NULL;
}

// func_def = "int" ident "(" ("int" ident ("," "int" ident)*)? ")" block
Node* func_def() {
    // TODO: 本当? 呼び出しごとでは?
    cur_scope_depth++;

    // read type annotation of return value
    if (!consume_kind(TK_TYPE)) {
        error("type annotation of func is needed");
    }

    // function name
    Node* node = NULL;
    Token* tok = consume_kind(TK_IDENT);
    if (tok == NULL) {
        error("here function must come");
    }

    node = new_node(ND_FUNC_DEF);
    node->funcname = calloc(100, sizeof(char));
    memcpy(node->funcname, tok->str, tok->len);
    node->args = calloc(10, sizeof(char*));
    node->block = calloc(100, sizeof(Node));

    // function args
    expect("(");
    for (int i = 0; !consume(")"); i++) {
        if (i != 0) {
            expect(",");
        }

        if (consume_kind(TK_TYPE)) {
            Node* variable_node = define_variable();
            node->args[i] = variable_node;
        } else {
            char* name[100] = {0};
            memcpy(name, token->str, token->len);
            error("invalid token comes here. %d", name);
        }
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
//        | block
//        | define_variable ";" TODO:
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

    if (consume_kind(TK_TYPE)) {
        Node* node = define_variable();
        expect(";");
        return node;
    }

    Node* block_node = block();
    if (block_node != NULL) {
        return block_node;
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

// expr = assign
Node* expr() { return assign(); }

// assign = equality ("=" equality)?
Node* assign() {
    Node* node = equality();

    if (consume("=")) {
        node = new_binary(ND_ASSIGN, node, equality());
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
            if (node->type != NULL && node->type->ty != INT) {
                // pointer calc
                int n = node->type->ptr_to->ty == INT ? 4 : 8;
                node = new_binary(ND_ADD, node,
                                  new_binary(ND_MUL, mul(), new_num(n)));
            } else {
                node = new_binary(ND_ADD, node, mul());
            }
        } else if (consume("-")) {
            if (node->type != NULL && node->type->ty != INT) {
                // pointer calc
                int n = node->type->ptr_to->ty == INT ? 4 : 8;
                node = new_binary(ND_SUB, node,
                                  new_binary(ND_MUL, mul(), new_num(n)));
            } else {
                node = new_binary(ND_SUB, node, mul());
            }
        } else {
            return node;
        }
    }
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

// unary = ("sizeof" | "+"" | "-" | "*" | "&")? unary | primary
Node* unary() {
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

    // sizeof x: xのサイズを返す.
    if (consume_kind(TK_SIZEOF)) {
        // "sizeof" unaryにおけるunaryの末尾までtokenをすすめる
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

        // 変数呼び出しの場合
        return variable(tok);
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
// define_variable = "int" "*"* ident
//                   | "int" "*"* ident "[" number "]"
Node* define_variable() {
    Type* type;
    type = calloc(1, sizeof(Type));
    type->ty = INT;  // default INT
    type->ptr_to = NULL;

    // compilerのC上でptrのlinedlistを持つ
    // TODO: このあと変数定義時にこのchainも考慮?
    while (consume("*")) {
        Type* t = calloc(1, sizeof(Type));
        t->ty = PTR;
        t->ptr_to = type;
        type = t;
    }

    Token* tok = consume_kind(TK_IDENT);
    if (tok == NULL) {
        error("invalid definition of variable.");
    }

    int size = get_type_size(type);

    // NOTE: sizeは8の倍数でないとだめ(1word8bitだからだと思われる)
    while ((size % 8) != 0) {
        size += 4;
    }

    // check if it's array or not;
    while (consume("[")) {
        Type* t;
        t = calloc(1, sizeof(Type));
        t->ty = ARRAY;
        t->ptr_to = type;
        t->array_size = expect_number();

        type = t;
        size *= t->array_size;
        expect("]");
        fprintf(stderr, "arary size: %ld\n", type->array_size);
    }

    Node* node = new_node(ND_LVAR);
    LVar* lvar = find_lvar(tok);
    if (lvar) {
        char name[100] = {0};
        memcpy(name, tok->str, tok->len);
        error("redefining variable %s", name);
    }

    // 新規変数なのでlvarを追加する
    lvar = calloc(1, sizeof(LVar));
    lvar->next = locals[cur_scope_depth];
    lvar->name = tok->str;
    lvar->len = tok->len;
    lvar->type = type;

    if (locals[cur_scope_depth] == NULL) {
        lvar->offset = size;
    } else {
        lvar->offset = locals[cur_scope_depth]->offset + size;
    }
    locals[cur_scope_depth] = lvar;

    node->offset = locals[cur_scope_depth]->offset;
    node->type = type;
    return node;
}

// TODO: これは本当? 外のscopeの値をそのまま利用 or
// ウワがいてしまう
// 変数ノードの生成+変数をlocalsに登録
Node* variable(Token* tok) {
    Node* node = new_node(ND_LVAR);
    LVar* lvar = find_lvar(tok);
    if (lvar == NULL) {
        char name[100] = {0};
        memcpy(name, tok->str, tok->len);
        error("variable %s is not defined yet", name);
    }

    // すでに宣言済みの変数であればそのoffsetを使う
    node->offset = lvar->offset;
    node->type = lvar->type;

    while (consume("[")) {
        // a[3] は *(a + 3) にする
        Node* add = new_node(ND_ADD);
        add->lhs = node;
        add->rhs = expr();
        node = new_node(ND_DEREF);
        node->lhs = add;
        // TODO: node(ND_LVAR)のtypeが配列のままなのにptrになっちゃってない?
        expect("]");
    }

    return node;
}

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
    if (t && node->kind == ND_DEREF) {
        t = t->ptr_to;
        if (t == NULL) {
            error("invalid dereference");
        }
        return t;
    }
    return t;
}

// 渡ってきたtypeのサイズを返す.
// INT -> 4
// PTR -> 8
int get_type_size(Type* type) {
    if (type == NULL) {
        error("type should be non null");
    }
    return type && type->ty == PTR ? 8 : 4;
}
