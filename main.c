#include "9cc.h"

// 9cc.hでexternしたものをここで定義する
Token* token;
char* user_input;

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