#include <stdio.h>

int main(int argc, char **argv) {
    int a = 1;
    printf("%d\n", a);
    {
        a = 2;
        printf("%d\n", a);
    }
    printf("%d\n", a);
    return 0;
}
