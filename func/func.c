#include <stdio.h>

// cc -c func/func.c でcopmileする
int foo() {
    printf("called\n");
    return 1;
}

int foo2(int x, int y) {
    printf("%d + %d = %d\n", x, y, x + y);
    return x + y;
}

int foo3(int x, int y, int z) {
    printf("%d + %d + %d = %d\n", x, y, z, x + y + z);
    return x + y + z;
}