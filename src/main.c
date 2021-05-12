#include "baricc.h"

int main(int argc, char** argv) {
    // make a LinkedList of token from all of the given files.
    Token* t = NULL;
    for (int i = 1; i < argc; i++) {
        filename = argv[i];
        printf("; i = %d, filename=%s\n", i, filename);
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

    cur_scope_depth = 0;
    program();

    // specify what syntax to use for this output.
    printf(".intel_syntax noprefix\n");

    // TODO: learn .bss
    // .bss
    // declare global variables without initializers
    printf(".bss\n");  // TODO: what's this
    for (int i = 0; code[i]; i++) {
        if (code[i]->kind == ND_GVAR_DEF) {
            if (code[i]->var->init == NULL) {
                gen(code[i]);
            }
        }
    }

    // TODO: learn .data
    // .data
    // declare global variables with initializers
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

    // TODO: learn .text
    // .text
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