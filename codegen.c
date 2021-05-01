#include "9cc.h"
LVar* locals;

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
    Node *node = new_node(ND_NUM);
    node->val = val;
    return node;
}

// 最大stmt数(仮)
Node *code[100];

// program = stmt*
void program() {
    int i = 0;
    while (!at_eof()) {
        code[i] = stmt();
        i++;
    }
    code[i] = NULL;
}

// stmt = expr ";" | "return" expr ";"
Node* stmt() {
    if(consume("return")) {
        node = new_node(ND_RETURN);
        node->lhs = expr(); // lhsだけ持つとする
    } else {
        node = expr()
    }

    expect(";");
    return node;
}

// expr = assign
Node* expr() {
    return assign();
}

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

    for(;;) {
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

    for(;;) {
        // TODO: こっち先でよいの?
        // -> OK. なぜならconsumeが見ているのは次のtokenなのですでに<か<=かは考慮済みなので
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

    for(;;) {
        if (consume("+")) {
            node = new_binary(ND_ADD, node, mul());
        } else if (consume("-")) {
            node = new_binary(ND_SUB, node, mul());
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

// unary = ("+"" | "-"")? unary | primary
Node* unary() {
    if (consume("+")) {
        return unary();
    }
    if (consume("-")) {
        return new_binary(ND_SUB, new_num(0), unary());
    }

    return primary();
}

// primary = num | ident | "(" expr ")"
Node* primary() {
    // 次のトークンが ( なら ( expr ) のハズ
    if (consume("(")) {
        Node* node = expr();
        expect(")");
        return node;
    }

    // ident
    Token* tok = consume_ident();
    if (tok) {
        Node* node = new_node(ND_LVAR);
        LVar* lvar = find_lvar(tok);
        // すでに宣言済みの変数であればそのoffsetを使う
        if(lvar) {
            node->offset = lvar->offset;
        // 新規変数であればlvarを追加する
        } else {
            lvar = calloc(1, sizeof(LVar));
            lvar->next = locals;
            lvar->name = tok->str;
            lvar->len = tok->len;

            if (locals == NULL) {
                lvar->offset = 8;
            } else {
                lvar->offset = locals->offset + 8;
            }

            node->offset = lvar->offset;
            locals = lvar;
        }
        return node;
    }

    // そうでなければnumのハズ
    return new_num(expect_number());
}


// 構文木からアセンブラを作るところまで一気に進める
void gen(Node* node) {
    switch(node->kind) {
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
        // printf("  pop rax\n");
        // printf("  mov rsp, rbp\n");
        // printf("  pop rbp\n");
        printf("  ret\n");
        return;
    }

    gen(node->lhs);
    gen(node->rhs);

    printf("  pop rdi\n");
    printf("  pop rax\n");

    switch(node->kind) {
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
            暗黙的にrdx, raxをとってそれを合わせたものを128bit整数とみなしてそれを引数レジスタの64bitでわり、
            商をraxに、あまりをrdxにセットする
            cqo命令を使うとraxに入っている64bitの値を128bitに伸ばしてrdx, raxにセットすることが出来る

            pop rdi   // stackから取り出して割る数としてset
            pop rax   // stackから取り出して割られる数としてset
            cqo       // rdx, rax <- 10 を代入する命令. 全体で10なので、rdxは0が入る
            idiv rdi  // rdx,rax(10) / rdi を行い、商をrax, あまりをrdxにset
            push rax  // 答えをpush
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

// nodeが左辺値ならその変数に入っている値をstackにpushする
void gen_lval(Node* node) {
    if (node->kind != ND_LVAR) {
        error("代入の左辺値が変数ではありません");
    }

    printf("  mov rax, rbp\n");
    printf("  sub rax, %d\n", node->offset);
    printf("  push rax\n");
}