/*
cc -o sandbox sandbox.c && ./sandbox; echo $?
*/

#include <string.h>

char* global_hoge = "hoge";
int main(int argc, char** argv) {
    char* word = global_hoge;
    char* word = "hogehoge";
    int* x;
    int y;
    y = 12;
    x = &y;
    return *x;
    return strlen(word);
}
