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

    // fileから
    filename = argv[1];
    user_input = read_file(filename);
    // 文字列から
    // user_input = argv[1];

    token = tokenize();
    cur_scope_depth = 0;
    program();

    // アセンブリの前半を出力
    printf(".intel_syntax noprefix\n");

    printf(".bss\n");  // TODO: what's this

    // codeのstmtがある限りすすめる
    // まず変数定義
    for (int i = 0; code[i]; i++) {
        if (code[i]->kind == ND_GVAR_DEF) {
            // fprintf(stderr, "[DEBUG]: %s\n", code[i]->varname);
            gen(code[i]);
        }
    }

    // TODO:
    // .LC0 :
    //   .string "hello"
    // name :
    //   .quad .LC0
    // TODO: .dataを調べる
    printf(".data\n");
    for (StringToken* str = strings; str; str = str->next) {
        printf(".LC%d:\n", str->index);
        printf("  .string \"%s\"\n", str->value);
    }

    // つづいて関数定義
    printf(".text\n");  // TODO: what's this
    printf(".globl main\n");
    // 定義した順番にgenしていく
    cur_scope_depth = 0;
    for (int i = 0; code[i]; i++) {
        if (code[i]->kind == ND_FUNC_DEF) {
            cur_scope_depth++;
            // fprintf(stderr, "[DEBUG]: %s\n", code[i]->funcname);
            gen(code[i]);
        }
    }

    return 0;
}