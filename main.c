#include "9cc.h"

// 9cc.hでexternしたものをここで定義する
Token* token;
char* user_input;
Node *code[100];

int main(int argc, char **argv) {
    if (argc != 2) {
        fprintf(stderr, "invalid num of arguments");
        return 1;
    }

    locals = NULL;
    user_input = argv[1];
    token = tokenize();
    program();

    // アセンブリの前半を出力
    printf(".intel_syntax noprefix\n");
    printf(".globl main\n");
    printf("main:\n");

    // mainのプロローグ
    printf("  push rbp\n");
    printf("  mov rbp, rsp\n");
    printf("  sub rsp, 208\n"); // 8 * 26

    // codeのstmtがある限りすすめる
    for (int i = 0; code[i]; i++) {
        gen(code[i]);

        // 式の評価結果としての値がスタックに残っている
        printf("  pop rax\n");
    }

    // mainのエピローグ
    // 最後の式の結果がraxに残っているので、それが返り値になる
    printf("  mov rsp, rbp\n");
    printf("  pop rbp\n");
    printf("  ret\n");

    return 0;
}