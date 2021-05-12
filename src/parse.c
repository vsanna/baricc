#include "baricc.h"

LVar* locals[100];
LVar* globals[100];
int cur_scope_depth = 0;
StringToken* strings;
Tag* tags;
EnumVar* enum_vars;
Node* current_switch = 0;
// How many function/global variables/global typedef this compiler supports.
// TODO replace Node*[] -> Node**
Node* code[1000];

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
}

Node* new_unary(NodeKind kind, Node* lhs) {
    Node* node = new_node(kind);
    node->lhs = lhs;
    return node;
}

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

/**************************
 * parse functions
 * *************************/
// program ::= ( func_def
//             | define_variable ";"
//             | "struct" define_struct ";"
//             | "enum" define_enum ";"
//             | "typedef" define_typedef
//             )*
void program() {
    int i = 0;
    while (!at_eof()) {
        Token* tk = token;
        if (consume_kind(TK_TYPEDEF)) {
            define_typedef();
            expect(";");
            continue;
        }

        if (check_kind(TK_ENUM)) {
            define_enum();
            expect(";");
            continue;
        }

        // DEBUG: if(check_kind(TK_STRUCT)) would be better. will align with code above

        // top level statements which start with type + ident, like "int* hoge"
        // three types of such statements.
        // 1. function def: int main() {}
        // 2. struct def: struct Hoge {} ... this should be placed before this section. if (check_kind(TK_STRUCT)) is better.
        // 3. global var def: int hoge = 1;
        Define* def = read_define_head();

        if (def == NULL) {
            print_token(token);
            error0("def is NULL");
        }
        if (consume("(")) {
            Node* func_node = func_def(def);
            if (func_node) {
                code[i] = func_node;
            } else {
                continue;
            }
        } else if (def->type->ty == STRUCT) {
            /*
            # valid:
            struct Hoge {int a;} hoge;
            struct Hoge {int a;} hoge = {1};
            Hoge hoge;
            Hoge hoge[] = {};

            # invalid:
            struct {int a;} hoge;
            struct {int a;} hoge = {1};
            struct Hoge {int a;}[] a;  ... we cannot define array of struct in oneline.
            */
            if (check("[")) {
                // Hoge hoge[] pattern.
                Node* gvar = define_variable(def, globals);

                // TODO: refactor: should change kind in other place.
                gvar->kind = ND_GVAR_DEF;
                code[i] = gvar;
                expect(";");
            } else {
                // struct Hoge {int a;};
                define_struct();
                expect(";");
                continue;
            }
        } else {
            Node* gvar = define_variable(def, globals);

            // TODO: refactor: should change kind in other place.
            gvar->kind = ND_GVAR_DEF;
            code[i] = gvar;
            expect(";");
        }
        i++;
    }
    code[i] = NULL;
}

// ex:
//   typedef struct Hoge {int a;} Gegi;
//   typedef struct Hoge Geho;
//   typedef int INT;
//   typedef char* String;
// define_typedef ::= "typedef" type_decl alias
// TODO: this doesn't have to return bool.
bool define_typedef() {
    // TODO: do consume_kind(TK_TYPEDEF) here
    Define* def = read_define_head();
    read_define_head(def);

    // register this type(struct) as its name is this identident
    push_tag(def->ident, def->type, false);
    return true;
}

// define_enum ::= "enum" ident "{" (define_enum_member (","
Type* define_enum() {
    if (!consume_kind(TK_ENUM)) {
        return NULL;
    }

    Token* name = consume_kind(TK_IDENT);

    if (name && !check("{")) {
        Tag* tag = find_or_register_tag(name);
        if (tag->type->incomplete) {
            error0("type not found.");
        }
        return tag->type;  // int should be returned
    }

    expect("{");
    int num = 0;
    while (true) {
        if (consume("}")) break;

        define_enum_member(&num);

        // it's legal to have trailing comma
        if (consume("}")) break;
        expect(",");
    }

    // register to tags as int type
    if (name) {
        push_tag(name, int_type(), true);
    }

    return int_type();
}

/*
define_enum_member ::= ident ("=" number)
    `AAA = 10`
    or
    `AAA`
define_enum_member register each enum members as EnumVar
auto assigned number value starts from 1;
*/
void define_enum_member(int* num) {
    Token* tok = expect_kind(TK_IDENT);

    if (consume("=")) {
        *num = expect_number();
    } else {
        *num += 1;
    }

    EnumVar* e = calloc(1, sizeof(EnumVar));
    e->name = calloc(100, sizeof(char));
    memcpy(e->name, tok->str, tok->len);
    e->value = *num;
    e->next = enum_vars;
    enum_vars = e;
    return;
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
Type* ptr_type() {
    Type* t = calloc(1, sizeof(Type));
    t->ty = PTR;
    t->size = 8;
    return t;
}

/*
define new struct tag or finde defined struct tag, and return the tag's type

struct itself doesn't print to assembly;
it's information only compiler has.

when define_struct_body doesn't exist,
it registers the struct tentatively or retrieves already registered tag

define_struct ::= "struct" ident? define_struct_body
                  | "struct" ident
define_struct_body ::= "{" (define_variable ";")* "}"
*/
Type* define_struct() {
    if (!consume_kind(TK_STRUCT)) {
        return NULL;
    }

    Token* name = consume_kind(TK_IDENT);

    // if ident(name) is found and this struct doesn't have define_struct_body,
    // retrieve a tag tied with the name
    if (name && !check("{")) {
        Tag* tag = find_or_register_tag(name);
        // when the struct is still imcomplete, this tag is returned as INT,
        // so override it as STRUCT forcibly.
        // TODO: refactor
        tag->type->ty = STRUCT;
        return tag->type;
    }

    expect("{");

    Type* struct_type = calloc(1, sizeof(Type));
    struct_type->ty = STRUCT;

    Member head;
    Member* cur = &head;

    int offset = 0;
    int maxSize = 0;
    while (!consume("}")) {
        // retrieve type info of a member
        Define* def = read_define();
        expect(";");
        // build a members with the member's name and type
        //// name
        Member* m = calloc(1, sizeof(Member));
        m->name = calloc(100, sizeof(char));
        memcpy(m->name, def->ident->str, def->ident->len);
        //// type
        m->ty = def->type;
        int size = get_type_size(def->type);

        /*
        calc offset for each member.
        here it just defines offset for each members.
        TODO:
        with initializer: we need ND_PADDING
        without initializer: we don't need ND_PADDING
        ... why? see how assembly is generated with these 4 patterns
        1. local * with initializer
        2. global * with initializer
        3. local * without initializer
        4. global * without initializer


        struct {
            int a;
            char b;
            int c;
        }
        a: offset = 0
        b: offset = 4
        c: offset = 8
        */
        // TODO: learn in more detail here.
        offset = align_to(offset, size);
        m->offset = offset;
        offset += size;
        cur->next = m;
        cur = m;

        if (maxSize <= 8 && maxSize <= size) {
            maxSize = size;
        }
    }

    struct_type->members = head.next;
    struct_type->size = align_to(offset, maxSize);

    // register to tags
    if (name) {
        push_tag(name, struct_type, true);
    }

    return struct_type;
}

/*
func_def ::= read_define "(" (define_arg ("," define_ar)*)? ")" block
NOTE: c cannot pass array as arg. so we cannot use read_define for arg.

Node{
    kind: ND_FUNC_DEF
    funcname: function name
    args: array of Node(ND_LVAR). NOTE: register args as local variables too!
    lhs: function body as block
}
*/
Node* func_def(Define* def) {
    // one LVar linked list per one function.
    cur_scope_depth++;

    Node* node = new_node(ND_FUNC_DEF);

    // function name
    node->funcname = calloc(100, sizeof(char));
    memcpy(node->funcname, def->ident->str, def->ident->len);
    node->args = calloc(10, sizeof(Node*));

    // function args
    for (int i = 0; !consume(")"); i++) {
        if (i != 0) expect(",");
        node->args[i] = define_arg();
    }

    // NOTE: int hoge(); is prototype decl.
    // just skip this kind of statement since baricc doesn't support prototype decl(it just ignores)
    if (consume(";")) {
        locals[cur_scope_depth] = NULL;
        cur_scope_depth--;
        return NULL;
    }

    // function body
    node->lhs = block();

    return node;
}

// define_arg ::= type "*"* ident
Node* define_arg() {
    Define* arg_def = read_define_head();
    if (arg_def == NULL) {
        char* name[100] = {0};
        memcpy(name, token->str, token->len);
        error1("invalid token comes here. %d", name);
    }

    // extract arg as ND_LVAR and register it as local variable
    return define_variable(arg_def, locals);
}

// TODO: this eBNF is nore up-to-date.
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
Node* stmt() {
    Node* node;

    if (consume_kind(TK_RETURN)) {
        node = new_node(ND_RETURN);
        if (!consume(";")) {
            node->lhs = expr();
            expect(";");
        }
        return node;
    }

    if (consume_kind(TK_IF)) {
        /*
        # without else
        ND_IF:
            lhs: cond
            rhs: main

        # with else
        ND_IF:
            lhs: cond
            rhs: else
                lhs: main
                rhs: alt(stmt)
        */
        node = new_node(ND_IF);
        expect("(");
        node->lhs = expr();
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
        Node* node = new_node(ND_SWITCH);
        expect("(");
        node->lhs = expr();  // switch's flag expr
        expect(")");

        // To allow nested switch, escape current_switch
        Node* sw = current_switch;
        current_switch = node;

        // ND_BLOCK comes here, and it has many ND_CASE and one ND_DEFAULT stmt
        node->rhs = stmt();

        current_switch = sw;
        return node;
    }

    if (consume_kind(TK_CASE)) {
        // consider `case 1:` this line as one stmt which outputs label only.
        if (!current_switch) {
            error0("stray case");
        }
        Token* t = token;
        Token* ident = consume_kind(TK_IDENT);
        Node* num_node = NULL;
        if (ident) {
            num_node = find_enum_var(ident);
        }
        if (num_node == NULL) {
            num_node = convert_predefined_keyword_to_num();
        }

        int val;

        if (num_node) {
            val = num_node->val;
        } else {
            val = expect_number();
        }

        expect(":");

        Node* node = new_node(ND_CASE);
        node->val = val;
        // To check labels from the top one.
        node->next_case = current_switch->next_case;
        current_switch->next_case = node;
        return node;
    }

    if (consume_kind(TK_DEFAULT)) {
        /*
        consider `default:` as one stmt which outputs label only.
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
        /*
        ND_FOR:
            lhs:
                lhs: stmt(initializer)
                rhs: cond to loop again
            rhs:
                lhs: post ops
                rhs: body to loop
        */
        Node* node = new_node(ND_FOR);
        Node* left = new_node(ND_FOR_LEFT);
        Node* right = new_node(ND_FOR_RIGHT);
        node->lhs = left;
        node->rhs = right;

        expect("(");
        if (!consume(";")) {
            // To allow variable declaration, using stmt.
            // TODO: modify stmt not to allow if/while in this part
            left->lhs = stmt();
        }

        if (!consume(";")) {
            left->rhs = expr();
            expect(";");
        }

        if (!consume(")")) {
            right->lhs = expr();  // TODO: this should be stmt?
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

    if (check("{")) {
        return block();
    }

    // decl new variable with/without initializer.
    Define* def = read_define_head();
    if (def != NULL) {
        Node* node = define_variable(def, locals);
        // convert ND_LVAR node to ND_ASSIGN
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
        int max_block_size = 1000;
        node->block = calloc(max_block_size, sizeof(Node));
        for (int i = 0; !consume("}"); i++) {
            if (i >= max_block_size) {
                error0(
                    "size of statements in one block is over the limitation.");
            }
            node->block[i] = stmt();
        }
    }
    return node;
}

// TODO: refactor. move assign in stmt and expr should work current "conditional" function.
// expr ::= assign
Node* expr() { return assign(); }

// what are described below from here are corresponding to expr in general.
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

/*
ex: A || B || C => (A || B) || C
ND_LOGOR:
    lhs: ND_LOGOR
        lhs: A
        rhs: B
    rhs: C
TODO: Now it doesn't work like this. add test and fix.
*/
Node* logor() {
    Node* node = logand();
    while (consume("||")) {
        node = new_binary(ND_LOGOR, node, logor());
    }
    return node;
}
/*
ex: A && B && C => (A && B) && C
ND_LOGAND:
    lhs: ND_LOGAND
        lhs: A
        rhs: B
    rhs: C
TODO: Now it doesn't work like this. add test and fix.
*/
Node* logand() {
    Node* node = bitor ();
    while (consume("&&")) {
        node = new_binary(ND_LOGAND, node, logand());
    }
    return node;
}

/*
ex: A | B | C => (A | B) | C
ND_BITOR:
    lhs: ND_BITOR
        lhs: A
        rhs: B
    rhs: C
TODO: Now it doesn't work like this. add test and fix.
*/
Node* bitor () {
    Node* node = bitxor();  // xor has higher priority than bitor
    while (consume("|")) {
        node = new_binary(ND_BITOR, node, bitor ());
    }
    return node;
}

/*
ex: A ^ B ^ C => (A ^ B) ^ C
ND_BITXOR:
    lhs: ND_BITXOR
        lhs: A
        rhs: B
    rhs: C
TODO: Now it doesn't work like this. add test and fix.
*/
Node* bitxor() {
    Node* node = bitand();
    while (consume("^")) {
        node = new_binary(ND_BITXOR, node, bitxor());
    }
    return node;
}

/*
ex: A & B & C => (A & B) & C
ND_BITAND:
    lhs: ND_BITAND
        lhs: A
        rhs: B
    rhs: C
TODO: Now it doesn't work like this. add test and fix.
*/
Node*bitand() {
    Node* node = equality();
    while (consume("&")) {
        node = new_binary(ND_BITAND, node, bitand());
    }
    return node;
}

// equality ::= relational ("==" relational | "!=" relational)*
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

// relational = add ("<" add | ">" add | "<=" add | ">=" add)?
Node* relational() {
    Node* node = add();

    for (;;) {
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

// add = mul("+" mul | "-" mul)*
Node* add() {
    Node* node = mul();

    for (;;) {
        if (consume("+")) {
            node = new_binary(ND_ADD, node, ptr_conversion(node, mul()));
        } else if (consume("-")) {
            node = new_binary(ND_SUB, node, ptr_conversion(node, mul()));
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

// unary = ("sizeof" | "+" | "-" | "*" | "&" | "++" | "--")? unary | primary
Node* unary() {
    // ++a
    if (consume("++")) {
        return new_binary(ND_PRE_INC, unary(), NULL);
    }
    // --a
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

    if (consume_kind(TK_SIZEOF)) {
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

        // when struct / enum definition is passed
        if ((check("(") && (token->next->kind == TK_ENUM ||
                            token->next->kind == TK_STRUCT)) ||
            (check_kind(TK_ENUM) || check_kind(TK_STRUCT))) {
            bool has_brace = false;
            if (consume("(")) {
                has_brace = true;
            }
            Define* def = read_define_head();
            Node* size_of_type = new_num(get_type_size(def->type));

            if (has_brace) consume(")");
            return size_of_type;
        }

        // when tag(aslias of type) is passed
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
                if (tag->type->ty == STRUCT && tag->type->incomplete) {
                    error0(
                        "it's not allowed to use sizeof for incomplete type");
                }
                consume_kind(TK_IDENT);

                // when sizeof(SomeType*)
                Node* size_of_type;
                if (consume("*")) {
                    size_of_type = new_num(get_type_size(ptr_type()));
                } else {
                    size_of_type = new_num(get_type_size(tag->type));
                }

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
Node* primary() {
    // recursive expr
    if (consume("(")) {
        Node* node = expr();
        expect(")");
        return node;
    }

    // ident
    Token* tok = consume_kind(TK_IDENT);
    if (tok) {
        // when func call
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

        // whne enum
        Node* num = find_enum_var(tok);
        if (num) {
            return num;
        }

        // calling variable
        return variable(tok);
    }

    // predefined keywords
    Node* num_node = convert_predefined_keyword_to_num();
    if (num_node) {
        return num_node;
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

    // otherwise number
    return new_num(expect_number());
}

// a[1] ==> *(a+1)
// variable = ident ("[" num "]")?
//            ^start
Node* variable(Token* tok) {
    Node* node = new_node(ND_LVAR);
    LVar* lvar = find_variable(tok);
    if (lvar == NULL) {
        char* name[100] = {0};
        memcpy(name, tok->str, tok->len);
        printf("; [DEBUG] %s name\n", name);
        error1("variable %s is not defined yet", name);
    }

    // if the lvar is already defined, use the offset
    node->offset = lvar->offset;
    node->type = lvar->type;

    node->kind = (lvar->kind == LOCAL) ? ND_LVAR : ND_GVAR;
    node->varname = calloc(100, sizeof(char));
    memcpy(node->varname, tok->str, tok->len);
    char* varname = node->varname;
    Type* tp = node->type;

    // a.b[0]->c[2][4]
    while (true) {
        bool has_index = false;
        while (consume("[")) {
            has_index = true;
            // a[3] => *(a + 3)
            // DEREF:
            //   ADD:
            //     a
            //     MUL:
            //       3(expr)
            //       sizeof(a)
            //
            // a[2][3] -> *( *(a + 2) + 2 )
            // value of (a + 1) is address, and [a + 1] is still address
            // To get a[1][2] from `int a[n][m];`,
            // we use DEREF( (a + sizeof(int * m) * 1) + sizeof(int) * 2 )
            // we just do deref at last only
            Node* add = new_node(ND_ADD);
            add->lhs = node;  // variable

            Node* index_val = expr();

            // we check size of element, so ew already see tp->ptr_to
            add->rhs = new_binary(ND_MUL, index_val,
                                  new_num(get_type_size(tp->ptr_to)));
            tp = tp->ptr_to;
            node = add;
            node->type = tp;
            node->varname = varname;
            expect("]");
        }
        if (has_index) {
            Node* deref_node = new_node(ND_DEREF);
            deref_node->lhs = node;
            node = deref_node;
            node->type = tp;
            continue;
        }

        // access to member
        if (consume(".")) {
            node = struct_ref(node);
            tp = node->type;
            node->varname = varname;
            continue;
        }

        // access to member (base is ptr)
        // ptr->field => (*ptr).field
        if (consume("->")) {
            Type* t = node->type->ptr_to;
            Node* deref = new_node(ND_DEREF);
            deref->lhs = node;  // this node is ptr lvar
            deref->type = t;
            // now deref is done. we do the same thing in a block above.
            node = struct_ref(deref);
            tp = node->type;
            node->varname = varname;
            continue;
        }

        // a++
        if (consume("++")) {
            node = new_binary(ND_SUF_INC, node, NULL);
            node->varname = varname;
            continue;
        }
        // a--
        if (consume("--")) {
            node = new_binary(ND_SUF_DEC, node, NULL);
            node->varname = varname;
            continue;
        }

        break;
    }

    return node;
}

/*
define_variable read variable decl and register it as NDLVAR to varlist(globals or locals)
TODO: support scope

define_variable ::= read_define ("=" initializer)
*/
Node* define_variable(Define* def, LVar** varlist) {
    if (def == NULL) {
        print_token(token);
        error0("invalid definition of function or variable");
    }
    int scope_depth = varlist == locals ? cur_scope_depth : 0;
    LVar* varlist_to_use = varlist[scope_depth];

    read_define_suffix(def);

    Type* type = def->type;
    Token* tok = def->ident;

    Node* init = NULL;
    if (consume("=")) {
        init = initializer(type);
    }

    int size = get_type_size(type);

    Node* node = new_node(ND_LVAR);
    LVar* var = find_variable(tok);

    node->varname = calloc(100, sizeof(char));
    memcpy(node->varname, tok->str, tok->len);
    node->varsize = size;

    if (var) {
        // TODO because scope is not implemented yet.
        // It should not be allowed to redefine variable in general.
        // error1("redefining variable %s", node->varname);
    }

    // register a new lvar.
    var = calloc(1, sizeof(LVar));
    var->next = varlist_to_use;
    var->name = tok->str;
    var->len = tok->len;
    var->type = type;
    var->kind = (varlist == locals) ? LOCAL : GLOBAL;
    var->init = init;

    // TODO: clearnup
    if (varlist_to_use == NULL) {
        var->offset = size;
    } else {
        var->offset = varlist_to_use->offset + size;
    }
    varlist[scope_depth] = var;

    // complete node
    node->offset = varlist[scope_depth]->offset;
    node->type = type;
    node->kind = (var->kind == LOCAL) ? ND_LVAR : ND_GVAR;
    node->var = var;
    return node;
}

// initializer ::= num | string | char | { (expr ("," expr)*)? }
// TODO: add descriptin about how this and initializer_helper work
Node* initializer(Type* type) {
    Node* init = calloc(1, sizeof(Node));
    init->block = calloc(100, sizeof(Node));
    int start = 0;
    int* i;
    i = &start;

    if (check("{")) {
        int debug;
        initializer_helper(type, init, i);
    } else {
        init = expr();
        if (init->kind == ND_STRING) {
            int len = strlen(init->string->value) + 1;
            if (type->array_size < len) {
                type->array_size = len;
            }
        }
    }

    return init;
}

void initializer_helper(Type* type, Node* init, int* i) {
    // TODO: refactor: it must be able to cunsume "{" here.
    if (consume("{")) {
        if (type->ty == ARRAY) {
            for (; !consume("}");) {
                if (check("{")) {
                    initializer_helper(type->ptr_to, init, i);
                } else {
                    init->block[*i] = expr();
                    init->block[*i]->type = type->ptr_to;
                    *i += 1;
                }
                consume(",");
            }

            // when size of initializer is larger than array_size, override the
            // array_size
            if (type->array_size < *i) {
                type->array_size = *i;
            }

            // when `int a[5] = {5}`
            // fill empty items as zero value
            for (; *i < type->array_size;) {
                init->block[*i] = new_num(0);
                *i += 1;
            }
        } else if (type->ty == STRUCT) {
            // when struct comes here
            Member* m = type->members;
            int total = 0;

            for (; !consume("}");) {
                if (check("{")) {
                    initializer_helper(m->ty, init, i);
                } else {
                    // padding between members
                    int aligned_total = align_to(total, get_type_size(m->ty));
                    if (aligned_total != total) {
                        init->block[*i] = new_node(ND_PADDING);
                        init->block[*i]->size = (aligned_total - total);
                        *i += 1;
                        total += (aligned_total - total);
                    }
                    init->block[*i] = expr();
                    init->block[*i]->type = m->ty;
                    *i += 1;

                    total += get_type_size(m->ty);
                }

                consume(",");

                m = m->next;
            }

            if (total != type->size) {
                init->block[*i] = new_node(ND_PADDING);
                init->block[*i]->size = type->size - total;
                *i += 1;
            }

        } else {
            print_type(type);
            error0("unexpected type is passed.");
        }
    }
}

/**************************
 * utils
 * *************************/

// access to member
Node* struct_ref(Node* node) {
    Node* member = new_node(ND_MEMBER);
    member->lhs = node;  // base object

    // get a member to access
    member->member = find_member(consume_kind(TK_IDENT), node->type);
    member->type = member->member->ty;
    return member;
}

// Among members a type(struct) has, find one which has a name corresponding to the given tok
Member* find_member(Token* tok, Type* type) {
    if (tok == NULL) {
        error0("member ident must come here");
    }
    if (type == NULL) {
        error0("member type is not passed.");
    }

    if (type->ty != STRUCT) {
        error0("this type doesn't have members.");
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

// find and return LVar from locals and globals
LVar* find_variable(Token* tok) {
    // char* tmp[100] = {0};
    // memcpy(tmp, tok->str, tok->len);
    // fprintf(stderr, "[DEBUG] looking up variable: %s\n", tmp);

    for (LVar* var = locals[cur_scope_depth]; var; var = var->next) {
        // char* tmp2[100] = {0};
        // memcpy(tmp2, var->name, var->len);
        // fprintf(stderr, "[DEBUG] comparing local token: %s and var: %s\n", tmp,
        //         tmp2);
        if (var->len == tok->len && !memcmp(tok->str, var->name, var->len)) {
            // fprintf(stderr, "[DEBUG] found local variable: %s\n", tmp);
            var->kind = LOCAL;
            return var;
        }
    }

    for (LVar* var = globals[0]; var; var = var->next) {
        // char* tmp2[100] = {0};
        // memcpy(tmp2, var->name, var->len);
        // fprintf(stderr, "[DEBUG] comparing global token: %s and var: %s\n", tmp,
        //         tmp2);
        if (var->len == tok->len && !memcmp(tok->str, var->name, var->len)) {
            // fprintf(stderr, "[DEBUG] found global variable: %s\n", tmp);
            var->kind = GLOBAL;
            return var;
        }
    }
    // fprintf(stderr, "[DEBUG] not found variable: %s\n", tmp);

    return NULL;
}

// convert node(ND_LVAR) with init -> ND_BLOCK which has several ND_ASSIGN
Node* local_variable_init(Node* node) {
    if (!node->var->init) {
        return node;
    }

    // let's say now we wanna define and initialize an array.
    // this copmiler evaluates `int a[2] = {1, 2};`
    // as:
    // int a[2];
    // a[0] = 1;
    // a[1] = 2;
    // these three lines.
    //
    // when num of itens in initializers are not enough to array_size, fill with
    // zero.

    // TODO: refactor: unify the almost same operations below.
    // when initializing string
    if (node->var->init->kind == ND_STRING) {
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

    // when initializing init a[] = {1, 2, func()};
    if (node->type->ty == ARRAY && node->var->init->block) {
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

    // when initializing struct Hoge h = {123, "asdf"};
    if (node->type->ty == STRUCT && node->var->init->block) {
        Node* block = new_node(ND_BLOCK);
        block->block = calloc(node->var->type->array_size, sizeof(Node));

        Member* m = node->var->type->members;
        for (int i = 0; node->var->init->block[i]; i++) {
            Node* add = new_node(ND_ADD);
            add->lhs = node;
            // TODO: check if this works correctly
            // TODO: is it fine for offset to start from zero?
            add->rhs = new_num(m->offset);
            Node* deref = new_node(ND_DEREF);
            deref->lhs = add;

            Node* assign = new_node(ND_ASSIGN);
            assign->lhs = deref;
            assign->rhs = node->var->init->block[i];

            block->block[i] = assign;
            m = m->next;
        }

        return block;
    }

    Node* assign = new_node(ND_ASSIGN);
    assign->lhs = node;
    assign->rhs = node->var->init;

    return assign;
}

// DEREF node like `*(a + 1) * b`(a is ptr and b is int) should return ptr_to's type(in this case, INT)
Type* get_type(Node* node) {
    if (node == NULL) {
        return NULL;
    }

    if (node->type) {
        return node->type;
    }

    // check left first
    Type* t = get_type(node->lhs);
    if (!t) {
        t = get_type(node->rhs);
    }

    // when node is DEREF, it returns ptr_to's type
    if (t && node->kind == ND_DEREF) {
        // TODO: ND_DEREF should have ptr_to? fix.
        if (t->ptr_to != NULL) {
            t = t->ptr_to;
            if (t == NULL) {
                print_node(node);
                print_type(t);
                print_type(t);

                error0("invalid dereference");
            }
        }
        return t;
    }
    return t;
}

// get_type_size returns suze if the type = (how much memory it needs to allocate itself)
// INT -> 4
// PTR -> 8
// CHAR -> 1
// TODO: change Type so that all Type object has its own size info in it.
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
            // struct stores size info in itself
            return type->size;
        default:
            error0("unexpected Type->ty comes here");
    }
}

// read_type_and_ident ::= type_info_prefix ident type_info_suffix
Define* read_define() {
    Define* def = read_define_head();
    read_define_suffix(def);
    return def;
}

/*
read_define_head ::= type "*"* ident
type ::= "int" | "char" | "void" | "bool"
read incopmlete type info and ident, and put them into Define as container, then return it
*/
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
        type->ty = INT;  // default
        if (isChar) type->ty = CHAR;
    }
    while (consume("*")) {
        Type* tt = calloc(1, sizeof(Type));
        tt->ty = PTR;
        tt->ptr_to = type;
        type = tt;
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

/*
read suffix of variable decl and updated given def with the info
*/
void read_define_suffix(Define* def) {
    if (def == NULL) {
        print_token(token);
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

// TODO: learn here
int align_to(int n, int align) { return (n + align - 1) & ~(align - 1); }

// in general, when calling push_tag, the type should be complete
// push_tag registers or update a tag in tags(global variable).
void push_tag(Token* tok, Type* type, bool is_complete) {
    char* name = calloc(100, sizeof(char));
    memcpy(name, tok->str, tok->len);

    // NOTE: tag->type = type doesn't work
    // because there are some parts that watching incomplete type directly.
    Tag* tag = find_or_register_tag(tok);
    // fprintf(stderr, "[DEBUG] updating tag: %s\n", name);
    tag->name = name;
    tag->type->array_size = type->array_size;
    tag->type->members = type->members;
    // NOTE: typedef struct Hoge Hoge; doesn't make the struct definition
    // complete.
    if (tag->type->incomplete && is_complete) {
        tag->type->incomplete = false;
    }
    tag->type->ptr_to = type->ptr_to;
    tag->type->size = type->size;
    tag->type->ty = type->ty;
}

Tag* find_tag(Token* tok) {
    char* n = calloc(100, sizeof(char));
    memcpy(n, tok->str, tok->len);

    // fprintf(stderr, "[DEBUG] finding tag: %s\n", n);
    for (Tag* tag = tags; tag; tag = tag->next) {
        if (strcmp(tag->name, n) == 0) {
            // fprintf(stderr, "[DEBUG] tag: %s is found.\n", n);
            return tag;
        }
    }

    // fprintf(stderr, "[DEBUG] tag: %s is not found.\n", n);
    return NULL;
}

Tag* find_or_register_tag(Token* tok) {
    char* n = calloc(100, sizeof(char));
    memcpy(n, tok->str, tok->len);

    // fprintf(stderr, "[DEBUG] finding tag: %s\n", n);
    for (Tag* tag = tags; tag; tag = tag->next) {
        if (strcmp(tag->name, n) == 0) {
            // fprintf(stderr, "[DEBUG] tag: %s is found.\n", n);
            return tag;
        }
    }
    // fprintf(stderr, "[DEBUG] tag: %s is not found. register it
    // tentatively\n",
    //         n);

    // when tag is not found, incomplete tag is returned as a dummy
    // so that we can use undefined type in advance.
    Tag* tag = calloc(1, sizeof(Tag));
    tag->name = n;
    tag->type = calloc(1, sizeof(Type));
    tag->type->incomplete = true;
    if (tags) {
        tag->next = tags;
    }
    tags = tag;
    return tag;
}

// find_enum_var returns enum as int if a enum whose name is corresponding to
// the given token. if it cannot find the enum name, it returns NULL. enum name
// here means `AAA` of `enum Enum {AAA, BBB}`
Node* find_enum_var(Token* tok) {
    char* name = calloc(100, sizeof(char));
    memcpy(name, tok->str, tok->len);

    for (EnumVar* e = enum_vars; e; e = e->next) {
        if (strcmp(e->name, name) == 0) {
            return new_num(e->value);
        }
    }

    return NULL;
}

// predefined const variable. they are treated as pure int.
// it's also fine to add codes in gen to evaluate these token..
Node* convert_predefined_keyword_to_num() {
    if (consume_kind(TK_TRUE)) {
        return new_num(1);
    }
    if (consume_kind(TK_FALSE)) {
        return new_num(0);
    }
    if (consume_kind(TK_NULL)) {
        return new_num(0);
    }
    if (consume_kind(TK_SEEKEND)) {
        return new_num(2);
    }
    if (consume_kind(TK_SEEKCUR)) {
        return new_num(1);
    }
    if (consume_kind(TK_SEEKSET)) {
        return new_num(0);
    }
    if (consume_kind(TK_ERRNO)) {
        return new_num(0);
    }
    if (consume_kind(TK_STDERR)) {
        return new_num(0);
    }

    return NULL;
}

Node* ptr_conversion(Node* node, Node* right) {
    if (node->type && node->type->ptr_to) {
        int size_of_type = get_type_size(node->type->ptr_to);
        return new_binary(ND_MUL, right, new_num(size_of_type));
    }
    return right;
}
