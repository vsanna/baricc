#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) {
    if (argc != 2) {
        fprintf(stderr, "invalid num of arguments");
        return 1;
    }

    // *(ptr) -> actual value
    // &(val) -> pointer
    // &(&val) -> ptr of ptr.
    // cではすべて値渡しなので大きなデータはptrわたしをする.
    // また、返り値が1つしかもてないので複数返り値を持ちたい場合もptrを渡す
    // また、callerが持つ変数を関数内部で書き換えたい場合もptr渡しをする
    char* p = argv[1];


    // 複数あるアセンブリ気泡の中でintel気泡を選択
    printf(".intel_syntax noprefix\n");
    printf(".globl main\n");
    printf("main:\n");
    // strtol(文字列(charのptr), 変換失敗時に変換できなかった文字列を格納するためのptrのptr, 基数)
    // 指定した文字列の先頭にある数字の部分をlongとして取得. また
    printf("  mov rax, %ld\n", strtol(p, &p, 10));

    while(*p) {
        if (*p == '+') {
            // pointerを一つ次のアドレスにすすめる
            p++;
            printf("  add rax, %ld\n", strtol(p, &p, 10));
            continue;
        }

        if (*p == '-') {
            p++;
            printf("  sub rax, %ld\n", strtol(p, &p, 10));
            continue;
        }

        fprintf(stderr, "invalid characters: %c\n", *p);
        return 1;
    }

    printf("  ret\n");
    return 0;
}