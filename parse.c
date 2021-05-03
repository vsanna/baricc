#include "9cc.h"

Token *token;
char *user_input;
LVar *locals[100];
int cur_scope_depth = 0;

// util
void print_token(Token *token) {
    fprintf(stderr, "token: ");
    for (int i = 0; i < token->len; i++) {
        fprintf(stderr, "%c", *(token->str + i));
    }
    fprintf(stderr, "\n");
}

void error(char *fmt, ...) {
    va_list ap;
    va_start(ap, fmt);
    vfprintf(stderr, fmt, ap);
    fprintf(stderr, "\n");
    exit(1);
}

void error_at(char *loc, char *fmt, ...) {
    va_list ap;
    va_start(ap, fmt);

    // 今読んでいるaddress - user_inputの先頭のaddress = pos
    int pos = loc - user_input;

    fprintf(stderr, "%s\n", user_input);
    fprintf(stderr, "%*s", pos,
            " ");  // pos個分の空白を出力(入力が1行であることを想定)
    fprintf(stderr, "^ ");
    vfprintf(stderr, fmt, ap);
    fprintf(stderr, "\n");

    exit(1);
}

// 次のトークンが期待している記号のときにはトークンを一つ読み進めてtrueを返す
// それ以外にはfalseを返す
bool consume(char *op) {
    if (token->kind != TK_RESERVED || strlen(op) != token->len ||
        // mempcmp(a, b, len) a/bを先頭からlen文だけ比較. 等しい場合は0, a >
        // bのときは1, a < bのときは-1
        memcmp(token->str, op, token->len)) {
        return false;
    }
    token = token->next;
    return true;
}

// 次のトークンが指定したtokenであれば一つ読み進めてそのtokenを返す
// それ以外はNULL
Token *consume_kind(TokenKind kind) {
    if (token->kind != kind) {
        return NULL;
    }
    Token *tok = token;
    token = token->next;
    return tok;
}

// 次のトークンが期待している記号のときにはトークンを一つ読み進める。
// それ以外にはエラーを投げる
void expect(char *op) {
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

bool at_eof() { return token->kind == TK_EOF; }

// 新しいトークンを作成してcurのnextにセット
// ?"+ 12 - hoge" が渡ってきたとき、tok->str = str で先頭の1文字だけ渡るのはなぜ
//   ->
//   わかった。その位置のアドレスを保持しているのみで、ちゃんとsplitしているわけではない...
Token *new_token(TokenKind kind, Token *cur, char *str, int len) {
    // callocは割り当てられたメモリをゼロクリアしてくれる
    Token *tok = calloc(1, sizeof(Token));
    tok->kind = kind;
    tok->str = str;  // charだけをsetしてる?
    tok->len = len;
    cur->next = tok;
    return tok;
}

bool startswith(char *p, char *q) { return memcmp(p, q, strlen(q)) == 0; }

// local変数を探してあればそれを返す。なければNULLを返す
LVar *find_lvar(Token *tok) {
    for (LVar *var = locals[cur_scope_depth]; var; var = var->next) {
        // NOTE: memcmpは一致していたら0を返す
        if (var->len == tok->len && !memcmp(tok->str, var->name, var->len)) {
            return var;
        }
    }
    return NULL;
}

bool is_alnum(char p) {
    return ('a' <= p && p <= 'z') || ('A' <= p && p <= 'Z') ||
           ('0' <= p && p <= '9') || (p == '_');
}

typedef struct ReservedWord {
    char *word;
    TokenKind kind;
} ReservedWord;

ReservedWord reserved_words[] = {
    {"return", TK_RETURN}, {"if", TK_IF},   {"else", TK_ELSE},
    {"while", TK_WHILE},   {"for", TK_FOR}, {"int", TK_INT},
    {"char", TK_CHAR},     {"", TK_EOF},
};

// 入力文字列pをトークない頭してそれを返す
// headはコードを簡単にするためのtrick.
// ポインターでlinkedlistを作るときの定石らしい.
Token *tokenize() {
    char *p = user_input;
    Token head;
    head.next = NULL;
    head.len = 0;
    head.str = NULL;
    Token *cur = &head;

    while (*p) {
        // print_token(cur);

        if (isspace(*p)) {
            p++;
            continue;
        }

        // identの前に処理する
        // returnがきてなおかつnの次がtokenを構成する文字列ではない
        // p[6]: pの示すアドレス+6にある値
        bool is_broken = false;
        for (int i = 0; reserved_words[i].kind != TK_EOF; i++) {
            char *word = reserved_words[i].word;
            int len = strlen(word);
            TokenKind kind = reserved_words[i].kind;

            if (startswith(p, word) && !is_alnum(p[len])) {
                cur = new_token(kind, cur, p, len);
                p += len;
                is_broken = true;
                break;
            }
        }
        if (is_broken) {
            continue;
        }

        // if (startswith(p, "return") && !is_alnum(p[6])) {
        //     cur = new_token(TK_RETURN, cur, p, 6);
        //     p += 6;
        //     continue;
        // }

        // if (startswith(p, "if") && !is_alnum(p[2])) {
        //     cur = new_token(TK_IF, cur, p, 2);
        //     p += 2;
        //     continue;
        // }

        // if (startswith(p, "else") && !is_alnum(p[4])) {
        //     cur = new_token(TK_ELSE, cur, p, 4);
        //     p += 4;
        //     continue;
        // }

        // if (startswith(p, "while") && !is_alnum(p[5])) {
        //     cur = new_token(TK_WHILE, cur, p, 5);
        //     p += 5;
        //     continue;
        // }

        // if (startswith(p, "for") && !is_alnum(p[3])) {
        //     cur = new_token(TK_FOR, cur, p, 3);
        //     p += 3;
        //     continue;
        // }

        if (startswith(p, "==") || startswith(p, "!=") || startswith(p, "<=") ||
            startswith(p, ">=")) {
            cur = new_token(TK_RESERVED, cur, p, 2);
            p += 2;
            continue;
        }

        if (strchr("+-*/()<>;={},&", *p)) {
            cur = new_token(TK_RESERVED, cur, p, 1);
            p++;
            continue;
        }

        // alphabet+いくつかの記号からなる文字列のまとまりは変数名
        if ('a' <= *p && *p <= 'z') {
            char *start = p;
            while (is_alnum(*p)) {
                p++;
            }
            cur = new_token(TK_IDENT, cur, start, (p - start));
            continue;
        }

        // TODO:
        // 今の箇所からどれだけの長さがdigitなのか、についてどう判断するのか
        if (isdigit(*p)) {
            cur = new_token(TK_NUM, cur, p, 0);
            char *q = p;
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
