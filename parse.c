#include "9cc.h"

Token* token;
char* user_input;

// util
void print_token(Token* token) {
    fprintf(stderr, "token: ");
    for(int i = 0; i < token->len; i++) {
        fprintf(stderr, "%c", *(token->str + i));
    }
    fprintf(stderr, "\n");
}

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
