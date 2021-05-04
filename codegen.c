#include "9cc.h"
LVar* locals[];
int cur_scope_depth;

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
            if (node->type != NULL && node->type->ty == PTR) {
                // pointer calc
                int n = node->type->ptr_to->ty == INT ? 4 : 8;
                node = new_binary(ND_ADD, node,
                                  new_binary(ND_MUL, mul(), new_num(n)));
            } else {
                node = new_binary(ND_ADD, node, mul());
            }
        } else if (consume("-")) {
            if (node->type != NULL && node->type->ty == PTR) {
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
        return new_binary(ND_DEREF, unary(), NULL);
    }
    if (consume("&")) {
        return new_binary(ND_ADDR, unary(), NULL);
    }
    if (consume_kind(TK_SIZEOF)) {
        Node* node = unary();
        // NOTE: 今ptr/intの２つしか肩がない。
        // TODO: nodeから木をたどって変数を探す
        // *(DEREF)があれば、変数を位置段階derefする必要がある
        int size = node->type && node->type->ty == PTR ? 8 : 4;
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

// 変数ノードの宣言用. lvarが見つかったらエラーを返すためのもの。
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

    int size = type->ty == PTR ? 8 : 4;

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
    return node;
}

char* argregs[] = {"rdi", "rsi", "rdx", "rcx", "r8", "r9"};

// TODO: ここが評価(コード生成)ロジックの中心なので別ファイルに後で移す.
// 構文木からアセンブラを作るところまで一気に進める
int if_id = 0;
// NOTE: ここに手を加えるときには細心の注意を払う!
// 出力されたアセンブラをみてどこがおかしいかを把握するのは至難
void gen(Node* node) {
    int id = if_id;
    int num_args = 0;

    switch (node->kind) {
        case ND_NUM:
            printf("  push %d\n", node->val);
            return;
        case ND_LVAR:
            // 左辺値のアドレスをスタックの先頭にpushし、
            gen_lval(node);
            // そのアドレスをraxにいれ
            printf("  pop rax\n");
            // そのアドレスにある値をraxにいれ、
            printf("  mov rax, [rax]\n");
            // その値をスタックの先頭にpush
            printf("  push rax\n");
            return;
        case ND_ASSIGN:
            // 左辺の左辺値のアドレスをstackにpush
            gen_lval(node->lhs);
            // 右辺を計算した値をstackにpush
            gen(node->rhs);
            // rdiに計算結果をpopしてrdiにいれる
            printf("  pop rdi\n");
            // 左辺のアドレスをpopしてraxに入れる
            printf("  pop rax\n");
            // raxのアドレスの指す場所にrdiを入れる
            printf("  mov [rax], rdi\n");
            // rdiの値 = 計算結果をstackの頂点に入れておく
            // こうすることで a = b = 10 みたいな式がかける
            printf("  push rdi\n");
            return;
        case ND_RETURN:
            gen(node->lhs);
            printf("  pop rax\n");       // 値をraxにset(ABI)
            printf("  mov rsp, rbp\n");  // epilogueをreturn時にも忘れず処理
            printf("  pop rbp\n");
            printf("  ret\n");
            return;
        case ND_IF:
            if_id++;
            // lhs: cond
            // rhs: stmt(main) or else(lhs=main, rhs=alt)

            // cond
            gen(node->lhs);
            printf("  pop rax\n");
            // lhs(=cond)の結果が0(=false)だったらjump
            // つまりjump先がalt
            printf("  cmp rax, 0\n");
            // TODO: xxxが重複しないようにする
            printf("  je .Lelse%d\n", id);

            if (node->rhs->kind == ND_ELSE) {
                Node* els = node->rhs;
                gen(els->lhs);
                printf("  jmp .Lend%d\n", id);
                printf(".Lelse%d:\n", id);
                gen(els->rhs);
                printf("  jmp .Lend%d\n", id);
            } else {
                gen(node->rhs);
                printf("  jmp .Lend%d\n", id);
                printf(".Lelse%d:\n", id);
            }

            printf(".Lend%d:\n", id);

            return;
        case ND_WHILE:
            if_id++;
            /*
            [cond]
            je end
            [main]
            .end:
            */
            printf(".Lbegin%d:\n", id);
            gen(node->lhs);
            printf("  pop rax\n");
            printf("  cmp rax, 0\n");
            printf("  je .Lend%d\n", id);
            gen(node->rhs);
            printf("  jmp .Lbegin%d\n", id);
            printf(".Lend%d:\n", id);
            return;
        case ND_FOR:
            if_id++;
            /*
            Aをコンパイルしたコード
            .LbeginXXX:
            Bをコンパイルしたコード
            pop rax
            cmp rax, 0
            je  .LendXXX
            Dをコンパイルしたコード
            Cをコンパイルしたコード
            jmp .LbeginXXX
            .LendXXX:
            */
            // 初期化
            if (node->lhs->lhs != NULL) {
                gen(node->lhs->lhs);
            }
            printf(".Lbegin%d:\n", id);

            // 条件
            if (node->lhs->rhs != NULL) {
                gen(node->lhs->rhs);
            } else {
                printf("  push 1\n");  // 常にtrue
            }
            printf("  pop rax\n");
            printf("  cmp rax, 0\n");
            printf("  je .Lend%d\n", id);

            // 実処理
            gen(node->rhs->rhs);

            // 後処理
            if (node->rhs->lhs != NULL) {
                gen(node->rhs->lhs);
            }

            printf("  jmp .Lbegin%d\n", id);
            printf(".Lend%d:\n", id);
            return;

        case ND_BLOCK:
            for (int i = 0; node->block[i] != NULL; i++) {
                gen(node->block[i]);
            }
            return;
        case ND_FUNC_CALL:
            if_id++;
            /*
            call前に引数をABIの定義するレジスタに登録する
            TODO: epilogueでpushするんじゃないのか?
                -> epilogueは関数のラベルの直下で書くもの.
                -> つまりココではない!
            TODO: 一旦引数は6個までサポート
            */

            // 引数をまず評価. stackにpushしていく
            for (int i = 0; node->block[i] != NULL; i++) {
                gen(node->block[i]);
                num_args++;
            }
            if (num_args > 6) {
                error_at(token->str, "invalid number of args. lteq 6.");
            }

            // 引数を"後ろから"ABI指定のregに投入
            // 現在stackの一番上には最後の引数を評価した値が入っている
            for (int i = num_args - 1; i >= 0; i--) {
                printf("  pop %s\n", argregs[i]);
            }

            // RSPを16の倍数にする調整
            printf("  mov rax, rsp\n");
            printf("  and rax, 15\n");  // 下位4bitがすべて0なら16の倍数
            printf("  cmp rsi, 0\n");
            printf("  je .L.callDirectly.%d\n", id);
            printf("  mov rax, 0\n");
            printf("  sub rsp, 8\n");
            printf("  call %s\n", node->funcname);
            printf("  add rsp, 8\n");
            printf("  jmp .L.called.%d\n", id);
            // 次のラインをreturn addrとしてstackに積みつつ関数のところにjump
            printf(".L.callDirectly.%d:\n", id);
            printf("  mov rax, 0\n");
            printf("  call %s\n", node->funcname);
            printf(".L.called.%d:\n", id);
            printf("  push rax\n");  // raxに返り値が格納されている(ABI)
            return;
        case ND_FUNC_DEF:
            // label
            printf("%s:\n", node->funcname);

            // エピローグ
            /*
            ret address  <- (1) call直後のRSP
            caller's RBP <- (2) ましたの2命令が終わったあとのRSP, RBP
            arg0
            arg1
            ...
            */
            printf("  push rbp\n");
            printf("  mov rbp, rsp\n");
            for (int i = 0; node->args[i]; i++) {
                printf("  push %s\n", argregs[i]);
                num_args++;
            }
            // 引数の数を覗いた変数の数文rspを"さらに"ずらして、変数領域を確保する
            // この関数のためだけのlocals領域をstack先頭に確保するようなイメージ
            // TODO: えー、本当? 理論と実践ではどうしてたっけ
            // TODO:
            // 昔のcはローカル変数を先頭に宣言していた、みたいな話と関係あるのか...
            if (locals[cur_scope_depth]) {
                int offset = locals[cur_scope_depth]->offset;
                fprintf(stderr, "OFFSET: %d\n", offset);
                offset -= num_args * 8;
                printf("  sub rsp, %d\n", offset);
            }

            // 内容
            gen(node->lhs);

            // プロローグ
            // printf("  mov rax, 0\n");
            printf("  mov rsp, rbp\n");
            printf("  pop rbp\n");
            printf("  ret\n");

            return;
        case ND_ADDR:
            /* [&の次に来る変数のアドレス]をpushする */
            gen_lval(node->lhs);
            return;
        case ND_DEREF:
            /*
            [アドレスの値]をpushした上で、それから値をとってきてpushし直す
            ND_LVARとほぼ同じ処理

            ref: ND_LVARのgen
            // 左辺値のアドレスをスタックの先頭にpushし、
            gen_lval(node);
            // そのアドレスをraxにいれ
            printf("  pop rax\n");
            // そのアドレスにある値をraxにいれ、
            printf("  mov rax, [rax]\n");
            // その値をスタックの先頭にpush
            printf("  push rax\n");
            */
            gen(node->lhs);
            printf("  pop rax\n");
            printf("  mov rax, [rax]\n");
            printf("  push rax\n");
            return;
    }

    gen(node->lhs);
    gen(node->rhs);

    printf("  pop rdi\n");
    printf("  pop rax\n");

    switch (node->kind) {
        case ND_ADD:
            printf("  add rax, rdi\n");
            break;
        case ND_SUB:
            printf("  sub rax, rdi\n");
            break;
        case ND_MUL:
            printf("  imul rax, rdi\n");
            break;
        case ND_DIV:
            printf("  cqo\n");
            /*
            idiv: 符号あり除算.
            暗黙的にrdx,
            raxをとってそれを合わせたものを128bit整数とみなしてそれを引数レジスタの64bitでわり、
            商をraxに、あまりをrdxにセットする
            cqo命令を使うとraxに入っている64bitの値を128bitに伸ばしてrdx,
            raxにセットすることが出来る

            pop rdi   // stackから取り出して割る数としてset
            pop rax   // stackから取り出して割られる数としてset
            cqo       // rdx, rax <- 10 を代入する命令.
            全体で10なので、rdxは0が入る idiv rdi  // rdx,rax(10) / rdi
            を行い、商をrax, あまりをrdxにset push rax  // 答えをpush
            */
            printf("  idiv rdi\n");
            break;
        case ND_EQ:
            printf("  cmp rax, rdi\n");
            printf("  sete al\n");
            printf("  movzb rax, al\n");
            break;
        case ND_NE:
            printf("  cmp rax, rdi\n");
            printf("  setne al\n");
            printf("  movzb rax, al\n");
            break;
        case ND_LT:
            printf("  cmp rax, rdi\n");
            printf("  setl al\n");
            printf("  movzb rax, al\n");
            break;
        case ND_LE:
            printf("  cmp rax, rdi\n");
            printf("  setle al\n");
            printf("  movzb rax, al\n");
            break;
    }

    printf("  push rax\n");
}

/*
左辺値として扱う = そのnodeの「アドレス」をstackにpushする
*/
void gen_lval(Node* node) {
    // ND_DEREFのときは右辺値扱いして「値」をstackにpushする
    if (node->kind == ND_DEREF) {
        // TODO: ->lhs を除外しても動いてしまう. なぜ
        gen(node->lhs);
        return;
    }

    // ND_LVARがくるとき
    if (node->kind != ND_LVAR) {
        error("代入の左辺値が変数ではありません");
    }

    printf("  mov rax, rbp\n");
    printf("  sub rax, %d\n", node->offset);
    printf("  push rax\n");
}