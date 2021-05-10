#include "9cc.h"

// 9cc.hでexternしたものをここで定義する
Token* token;
char* user_input;
Node* code[1000];
int cur_scope_depth;

int main(int argc, char** argv) {
    // make a LinkedList of token from all of the given files.
    Token* t = NULL;
    for (int i = 1; i < argc; i++) {
        filename = argv[i];
        user_input = read_file(filename);
        t = tokenize();
        if (!token) {
            token = t;
        } else {
            Token* tt = token;
            while (true) {
                if (tt->next->kind == TK_EOF) {
                    tt->next = t;
                    break;
                }
                tt = tt->next;
            }
            tt->next = t;
        }
    }

    // fileから
    // filename = argv[1];
    // user_input = read_file(filename);
    // 文字列から
    // user_input = argv[1];

    // token = tokenize();
    cur_scope_depth = 0;
    program();

    // アセンブリの前半を出力
    printf(".intel_syntax noprefix\n");

    // TODO: .bssを調べる
    // .bss
    // 初期化式のないグローバル変数
    printf(".bss\n");  // TODO: what's this
    for (int i = 0; code[i]; i++) {
        if (code[i]->kind == ND_GVAR_DEF) {
            if (code[i]->var->init == NULL) {
                gen(code[i]);
            }
        }
    }

    // TODO: .dataを調べる
    // .data
    // 初期化式のあるグローバル変数
    printf(".data\n");
    for (StringToken* str = strings; str; str = str->next) {
        printf(".LC%d:\n", str->index);
        printf("  .string \"%s\"\n", str->value);
    }
    for (int i = 0; code[i]; i++) {
        if (code[i]->kind == ND_GVAR_DEF) {
            if (code[i]->var->init != NULL) {
                gen(code[i]);
            }
        }
    }

    // TODO: what's this
    // .text
    // つづいて関数定義
    printf(".text\n");
    printf(".globl main\n");
    cur_scope_depth = 0;
    for (int i = 0; code[i]; i++) {
        if (code[i]->kind == ND_FUNC_DEF) {
            cur_scope_depth++;
            gen(code[i]);
        }
    }

    return 0;
}