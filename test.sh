#!/bin/bash

assert() {
    expected="$1"
    input="$2"

    ./9cc "$input" > tmp.s

    # link func.c(put non implemented c feature here)
    cd func
    cc -c func.c
    cd ..
    cc -o tmp tmp.s func/func.o

    ./tmp
    actual="$?"

    if [ "$actual" = "$expected" ]; then
        echo "$input => $actual"
    else
        echo "$input => $expected expected, but got $actual"
        exit 1
    fi
}

# global variables
assert 1 "
int a;
int b[10];

int main() {
    return 1;
}"

# array access

# TODO: 二重配列動かない(変数の型を無視しているからな気がする)
# assert 3 "
# int main() {
#     int a[2][3];
#     a[0][2] = 1;
#     a[1][3] = 2;
#     int *p;
#     p = a;
#     return p[0][2] + p[1][3];
# }"

assert 3 "
int main() {
    int a[2];
    a[0] = 1;
    a[1] = 2;
    int *p;
    p = a;
    return p[0] + p[1];
}"

# array calc
assert 3 "
int main() {
    int a[2];
    *a = 1;
    *(a + 1) = 2;
    int *p;
    p = a;
    return *p + *(p + 1);
}"

# arary def
assert 1 "
int main() {
    int arr[10];
    return 1;
}"

assert 1 "
int main() {
    int arr[10][20][30];
    return 1;
}"


# sizeof
assert 4 "
int main() {
    int x;
    int *y;

    return sizeof(x);
}"

assert 8 "
int main() {
    int x;
    int *y;

    return sizeof(y);
}"


assert 4 "
int main() {
    int x;
    int *y;

    return sizeof(x + 3);
}"

assert 7 "
int main() {
    int x;
    int *y;

    return sizeof x + 3;
}"

# TODO: y + 3 がptrであることを解釈する
assert 8 "
int main() {
    int x;
    int *y;

    return sizeof(y + 3);
}"

# TODO: y + 3 がptrであることを解釈する
assert 4 "
int main() {
    int *y;

    return sizeof(*y);
}"

assert 4 "
int main() {
    return sizeof(1);
}"

assert 4 "
int main() {
    int x;
    int *y;

    return sizeof(sizeof(1));
}"

assert 4 "
int main() {
    int x;
    int *y;

    sizeof(x);
    sizeof(y);

    sizeof(x + 3);
    sizeof(y + 3);
    sizeof(*y);

    sizeof(1);

    return sizeof(sizeof(1));
}"

# # pointer calc
# assert 4 "
# int main() {
#     int *p;
#     alloc4(&p, 1, 2, 4, 8);
#     int *q;
#     q = p + 3;
#     q = q - 1;
#     return *q;
# }
# "

# assert 4 "
# int main() {
#     int *p;
#     alloc4(&p, 1, 2, 4, 8);
#     int *q;
#     q = p + 2;
#     return *q;
# }
# "

# assert 8 "
# int main() {
#     int *p;
#     alloc4(&p, 1, 2, 4, 8);
#     int *q;
#     q = p + 3;
#     return *q;
# }
# "

# # assign with pointer
# assert 12 "
# int main() {
#     int x;
#     int* y;
#     y = &x;
#     *y = 12;
#     return x;
# }
# "

# assert 11 "
# int main() {
#     int x;
#     int *y;
#     x = 11;
#     y = &x;
#     return *y;
# }"

# # type annotation for func
# assert 6 "
# int main() {
#     int x;
#     x = 2;
#     return func(x, 4);
# }

# int func(int a, int x) {
#     return a + x;
# }
# "

# # type annotation
# assert 2 "
# int main() {
#     int x;
#     x = 2;
#     return x;
# }
# "

# # basic calculation test
# assert 10 'int main() { return 10; }'

# assert 5 "int main() {
#     return hoge() + geho();
# }

# int hoge() {
#     return 1;
# }

# int geho() {
#     return 4;
# }
# "

# assert 3 "
# int main() { return func(1, 2); }
# int func(int a, int b) { return a + b; }
# "

# assert 5 "
# int main() { return func(1, 2, 3); }
# int func(int a, int b, int c) { return b + c; }
# "

# assert 55 "int main() {
#     return total(10);
# }

# int total(int n) {
#     if (n < 0) return 0;
#     return n + total(n - 1);
# }
# "

# assert 55 "int main() {
#     int a;
#     a = 10;
#     return total(a);
# }

# int total(int n) {
#     if (n < 0) return 0;
#     return n + total(n - 1);
# }
# "

# assert 42 'int main(){ return 42; }'
# assert 21 "int main(){ return 5+20-4; }"
# assert 41 "int main(){ return  12 + 34 - 5 ; }"
# assert 47 'int main(){ return 5+6*7; }'
# assert 15 'int main(){ return 5*(9-6); }'
# assert 4 'int main(){ return (3+5)/2; }'
# assert 10 'int main(){ return -10+20; }'
# assert 10 'int main(){ return - -10; }'
# assert 10 'int main(){ return - - +10; }'

# # # comparison test
# assert 0 'int main(){ return 0==1; }'
# assert 1 'int main(){ return 42==42      ; }'
# assert 1 'int main(){ return 0!=1; }'
# assert 0 'int main(){ return 42!=42; }'

# assert 1 'int main(){ return 0<1; }'
# assert 0 'int main(){ return 1<1; }'
# assert 0 "int main(){ return 2<1; }"
# assert 1 'int main(){ return 0<=1; }'
# assert 1 'int main(){ return 1<=1; }'
# assert 0 'int main(){ return 2<=1; }'

# assert 1 'int main(){ return 1>0; }'
# assert 0 'int main(){ return 1>1; }'
# assert 0 'int main(){ return 1>2; }'
# assert 1 'int main(){ return 1>=0; }'
# assert 1 'int main(){ return 1>=1; }'
# assert 0 'int main(){ return 1>=2; }'

# # variables test
# assert 14 "
# int main() {
#     int a;
#     int b;
#     int c;
#     a = 3;
#     b = 5 * 6 - 8;
#     a + b / 2;
# }"


# assert 6 "
# int main() {
#     int foo;
#     int bar;
#     foo = 1;
#     bar = 2 + 3;
#     foo + bar;
# }
# "

# # return test
# assert 6 "
# int main() {
#     int foo;
#     int bar;

#     foo = 1;
#     bar = 2 + 3;
#     return foo + bar;
# }
# "

# assert 14 "
# int main() {
#     int a;
#     int b;

#     a = 3;
#     b = 5 * 6 - 8;
#     return a + b / 2;
# }
# "

# assert 8 "
# int main() {
#     int a;
#     return 3 + 5;
#     a = 10;
#     return 1;
# }
# "

# # if test
# assert 1 "
# int main() {
#     int a;

#     a = 5;
#     if (a == 5) a = 1;
#     return a;
# }
# "

# assert 10 "
# int main() {
#     int a;

#     a = 10;
#     if (a == 5) a = 1;
#     return a;
# }
# "

# assert 1 "
# int main() {
#     int a;

#     a = 10;
#     if (a != 5) a = 1;
#     return a;
# }
# "

# assert 1 "
# int main() {
#     int a;

#     a = 10;
#     if (a == 10) a = 1;
#     else a = 2;
#     return a;
# }
# "

# assert 2 "
# int main() {
#     int a;

#     a = 10;
#     if (a != 10) a = 1;
#     else a = 2;
#     return a;
# }
# "

# # multi if
# assert 201 "
# int main() {
#     int a;
#     int b;

#     a = 10;
#     b = 10;
#     if (a == 10)
#         a = 1;
#     else
#         a = 2;

#     if(b != 10)
#         b = 100;
#     else
#         b = 200;

#     return a + b;
# }
# "

# # TODO: failする
# # assert 199 "
# # a = 10;
# # b = 10;
# # if (a == 10)
# #     a = 1;
# # else
# #     a = 2;

# # if(b != 10)
# #     b = 100;
# # else
# #     b = -200;

# # return a + b;
# # "

# # nested if
# assert 210 "
# int main() {
#     int a;
#     int b;

#     a = 10;
#     b = 10;

#     if (a == 10)
#         if(b != 10)
#             b = 100;
#         else
#             b = 200;
#     else
#         a = 2;

#     return a + b;
# }
# "

# assert 5 "
# int main() {
#     int a;

#     a = 0;
#     while(a < 5)
#         a = a + 1;

#     return a;
# }
# "

# assert 11 "
# int main() {
#     int a;

#     a = 0;

#     int i;
#     for (i = 0; i <= 10; i = i+1) a = a + i;
#     return i;
# }
# "

# assert 55 "
# int main() {
#     int a;

#     a = 0;

#     int i;
#     for (i = 0; i <= 10; i = i+1) a = a + i;
#     return a;
# }
# "

# assert 100 "
# int main() {
#     int a;

#     a = 0;
#     for (;a < 100;) a = a + 1;
#     return a;
# }
# "

# # inf loop
# assert 100 "
# int main() {
#     int a;

#     a = 0;
#     for(;;)
#         if (a > 10)
#             return 100;
#         else
#             a = a + 1;
#     return 0;
# }
# "

# # block
# assert 100 "
# int main() {
#     int a;

#     a = 0;
#     for(;;) {
#         a = a + 1;
#         if (a > 10) return 100;
#     }
#     return -1;

# }
# "

# assert 1 "
# int main() {
#     int a;
#     int b;

#     a = 1;
#     b = 1;

#     if (a == 1) {
#         if (b == 1) {
#             return 1;
#         } else {
#             return 2;
#         }
#     } else {
#         if (b == 1) {
#             return 3;
#         } else {
#             return 4;
#         }
#     }
# }
# "

# assert 2 "
# int main() {
#     int a;
#     int b;

#     a = 1;
#     b = 0;

#     if (a == 1) {
#         if (b == 1) {
#             return 1;
#         } else {
#             return 2;
#         }
#     } else {
#         if (b == 1) {
#             return 3;
#         } else {
#             return 4;
#         }
#     }
# }
# "

# assert 3 "
# int main() {
#     int a;
#     int b;

#     a = 0;
#     b = 1;

#     if (a == 1) {
#         if (b == 1) {
#             return 1;
#         } else {
#             return 2;
#         }
#     } else {
#         if (b == 1) {
#             return 3;
#         } else {
#             return 4;
#         }
#     }
# }
# "

# assert 4 "
# int main() {
#     int a;
#     int b;

#     a = 0;
#     b = 0;

#     if (a == 1) {
#         if (b == 1) {
#             return 1;
#         } else {
#             return 2;
#         }
#     } else {
#         if (b == 1) {
#             return 3;
#         } else {
#             return 4;
#         }
#     }
# }
# "

# # func call
# assert 1 "int main(){ return foo(); }"
# assert 17 "int main(){ return foo2(10, 7); }"
# assert 16 "int main(){ return foo3(10, 7, -1); }"


# # pointer, deref
# assert 3 "
# int main() {
#     int x;
#     int y;

#     x = 3;
#     y = &x;
#     return *y;
# }
# "

# # a hack which uses this compiler's character that local variables are placed sequentially.
# # 0X10 x 3
# # 0X08 y 5(any value is fine for this example)
# # 0X00 z 0X08 + 0X8 = 0X10(x's address)
# assert 3 "
# int main() {
#     int x;
#     int y;
#     int z;

#     x = 3;
#     y = 5;
#     z = &y + 8;
#     return *z;
# }
# "

echo OK
