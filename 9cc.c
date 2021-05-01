#include <stdio.h>
#include <stdlib.h>

#include <ctype.h>
#include <stdarg.h>
#include <stdbool.h>
#include <string.h>

// tokenの種類
typedef enum {
    TK_RESERVED, // 記号
    TK_NUM,      // 整数トークン
    TK_EOF       // 入力の終わりを表すトークン
} TokenKind;

typedef struct Token Token;
struct Token {
    TokenKind kind; // トークンの種別
    Token *next;    // 次の入力トークン
    int val;        // TK_NUMの場合の値
    char *str;      // トークン文字列
    int len;        // トークンの長さ(lenを追加するまでは1文字の前提だった)
};

// 現在見ているtoken
Token* token;

// util
void print_token(Token* token) {
    fprintf(stderr, "token: ");
    for(int i = 0; i < token->len; i++) {
        fprintf(stderr, "%c", *(token->str + i));
    }
    fprintf(stderr, "\n");
}

char* user_input;
void error_at(char* loc, char* fmt, ...) {
    va_list ap;
    va_start(ap, fmt);

    // 今読んでいるaddress - user_inputの先頭のaddress = pos
    int pos = loc - user_input;

    fprintf(stderr, "%s\n", user_input);
    fprintf(stderr, "%*s", pos, " "); // pos個分の空白を出力(入力が1行であることを想定)
    fprintf(stderr, "^ ");
    vfprintf(stderr, fmt, ap);
    fprintf(stderr, "\n");

    exit(1);
}

// 次のトークンが期待している記号のときにはトークンを一つ読み進めてtrueを返す
// それ以外にはfalseを返す
bool consume(char* op) {
    if (token->kind != TK_RESERVED ||
        strlen(op) != token->len ||
        // mempcmp(a, b, len) a/bを先頭からlen文だけ比較. 等しい場合は0, a > bのときは1, a < bのときは-1
        memcmp(token->str, op, token->len)) {
        return false;
    }
    token = token->next;
    return true;
}

// 次のトークンが期待している記号のときにはトークンを一つ読み進める。
// それ以外にはエラーを投げる
void expect(char* op) {
    if (token->kind != TK_RESERVED || strlen(op) != token->len ||
        memcmp(token->str, op, token->len)) {
        error_at(token->str, "'%c'ではありません", op);
    }
    token = token->next;
    return;
}

// 次のトークンが数値の場合、トークンを一つ読み進めてその数値を返す
// それ以外の場合にはエラー
int expect_number() {
    if (token->kind != TK_NUM) {
        error_at(token->str, "数ではありませんん");
    }
    int val = token->val;
    token = token->next;
    return val;
}

bool at_eof() {
    return token->kind == TK_EOF;
}

// 新しいトークンを作成してcurのnextにセット
// ?"+ 12 - hoge" が渡ってきたとき、tok->str = str で先頭の1文字だけ渡るのはなぜ
//   -> わかった。その位置のアドレスを保持しているのみで、ちゃんとsplitしているわけではない...
Token *new_token(TokenKind kind, Token *cur, char *str, int len) {
    // callocは割り当てられたメモリをゼロクリアしてくれる
    Token *tok = calloc(1, sizeof(Token));
    tok->kind = kind;
    tok->str = str; // charだけをsetしてる?
    tok->len = len;
    cur->next = tok;
    return tok;
}

bool startswith(char* p, char* q) {
    return memcmp(p, q, strlen(q)) == 0;
}

// 入力文字列pをトークない頭してそれを返す
// headはコードを簡単にするためのtrick. ポインターでlinkedlistを作るときの定石らしい.
Token* tokenize() {
    char *p = user_input;
    Token head;
    head.next = NULL;
    head.len = 0;
    head.str = NULL;
    Token* cur = &head;

    while(*p) {
        // print_token(cur);
        // char* curtokenstr = cur->str == NULL ? "-" : cur->str;
        // fprintf(stderr, "token: %s\n", curtokenstr);

        if (isspace(*p)) {
            p++;
            continue;
        }

        if (startswith(p, "==") || startswith(p, "!=") || startswith(p, "<=") || startswith(p, ">=")) {
            cur = new_token(TK_RESERVED, cur, p, 2);
            p += 2;
            continue;
        }

        if (strchr("+-*/()<>", *p)) {
            cur = new_token(TK_RESERVED, cur, p, 1);
            p++;
            continue;
        }

        // TODO: 今の箇所からどれだけの長さがdigitなのか、についてどう判断するのか
        if (isdigit(*p)) {
            cur = new_token(TK_NUM, cur, p, 0);
            char* q = p;
            // 数字分だけ前に進む
            cur->val = strtol(p, &p, 10);
            cur->len = p - q;
            continue;
        }

        error_at(token->str, "トークナイズできません");
    }
    // print_token(cur);
    new_token(TK_EOF, cur, p, 0);
    return head.next;
}

// 抽象構文木のノードの種類
typedef enum {
    ND_ADD,
    ND_SUB,
    ND_MUL,
    ND_DIV,
    ND_NUM,
    ND_EQ,
    ND_NE,
    ND_LT,
    ND_LE
} NodeKind;

typedef struct Node Node;

struct Node {
    NodeKind kind;
    Node *lhs;
    Node *rhs;
    int val;   // kind == ND_NUMの場合のみ使う
};

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

Node* expr();
Node* equality();
Node* relational();
Node* add();
Node* mul();
Node* unary();
Node* primary();

// expr = equality
Node* expr() {
    return equality();
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

Node* primary() {
    // 次のトークンが ( なら ( expr ) のハズ
    if (consume("(")) {
        Node* node = expr();
        expect(")");
        return node;
    }

    // そうでなければnumのハズ
    return new_num(expect_number());
}


// 構文木からアセンブラを作るところまで一気に進める
void gen(Node* node) {
    if (node->kind == ND_NUM) {
        printf("  push %d\n", node->val);
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


int main(int argc, char **argv) {
    if (argc != 2) {
        fprintf(stderr, "invalid num of arguments");
        return 1;
    }

    user_input = argv[1];
    token = tokenize();
    Node* node = expr();

    // アセンブリの前半を出力
    printf(".intel_syntax noprefix\n");
    printf(".globl main\n");
    printf("main:\n");

    gen(node);
    printf("  pop rax\n");

    printf("  ret\n");
    return 0;
}