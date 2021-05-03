#include "9cc.h"

// 9cc.hでexternしたものをここで定義する
Token* token;
char* user_input;
Node* code[100];
int cur_scope_depth;

int main(int argc, char** argv) {
    if (argc != 2) {
        fprintf(stderr, "invalid num of arguments");
        return 1;
    }

    user_input = argv[1];
    token = tokenize();
    cur_scope_depth = 0;
    program();

    // アセンブリの前半を出力
    printf(".intel_syntax noprefix\n");
    printf(".globl main\n");

    // codeのstmtがある限りすすめる
    for (int i = 0; code[i]; i++) {
        cur_scope_depth++;
        gen(code[i]);
    }

    return 0;
}