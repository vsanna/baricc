#!/bin/bash

assert() {
    expected="$1"
    input="$2"

    ./9cc "$input" > tmp.s
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

# type annotation
assert 2 "
main() {
    int x;
    x = 2;
    return x;
}
"

# basic calculation test
assert 10 'main() { return 10; }'

assert 5 "main() {
    return hoge() + geho();
}

hoge() {
    return 1;
}

geho() {
    return 4;
}
"

assert 3 "
main() { return func(1, 2); }
func(a, b) { return a + b; }
"

assert 5 "
main() { return func(1, 2, 3); }
func(a, b, c) { return b + c; }
"

assert 55 "main() {
    return total(10);
}

total(n) {
    if (n < 0) return 0;
    return n + total(n - 1);
}
"

assert 55 "main() {
    int a;
    a = 10;
    return total(a);
}

total(n) {
    if (n < 0) return 0;
    return n + total(n - 1);
}
"

assert 42 'main(){ return 42; }'
assert 21 "main(){ return 5+20-4; }"
assert 41 "main(){ return  12 + 34 - 5 ; }"
assert 47 'main(){ return 5+6*7; }'
assert 15 'main(){ return 5*(9-6); }'
assert 4 'main(){ return (3+5)/2; }'
assert 10 'main(){ return -10+20; }'
assert 10 'main(){ return - -10; }'
assert 10 'main(){ return - - +10; }'

# # comparison test
assert 0 'main(){ return 0==1; }'
assert 1 'main(){ return 42==42      ; }'
assert 1 'main(){ return 0!=1; }'
assert 0 'main(){ return 42!=42; }'

assert 1 'main(){ return 0<1; }'
assert 0 'main(){ return 1<1; }'
assert 0 "main(){ return 2<1; }"
assert 1 'main(){ return 0<=1; }'
assert 1 'main(){ return 1<=1; }'
assert 0 'main(){ return 2<=1; }'

assert 1 'main(){ return 1>0; }'
assert 0 'main(){ return 1>1; }'
assert 0 'main(){ return 1>2; }'
assert 1 'main(){ return 1>=0; }'
assert 1 'main(){ return 1>=1; }'
assert 0 'main(){ return 1>=2; }'

# variables test
assert 14 "
main() {
    int a;
    int b;
    int c;
    a = 3;
    b = 5 * 6 - 8;
    a + b / 2;
}"


assert 6 "
main() {
    int foo;
    int bar;
    foo = 1;
    bar = 2 + 3;
    foo + bar;
}
"

# return test
assert 6 "
main() {
    int foo;
    int bar;

    foo = 1;
    bar = 2 + 3;
    return foo + bar;
}
"

assert 14 "
main() {
    int a;
    int b;

    a = 3;
    b = 5 * 6 - 8;
    return a + b / 2;
}
"

assert 8 "
main() {
    int a;
    return 3 + 5;
    a = 10;
    return 1;
}
"

# if test
assert 1 "
main() {
    int a;

    a = 5;
    if (a == 5) a = 1;
    return a;
}
"

assert 10 "
main() {
    int a;

    a = 10;
    if (a == 5) a = 1;
    return a;
}
"

assert 1 "
main() {
    int a;

    a = 10;
    if (a != 5) a = 1;
    return a;
}
"

assert 1 "
main() {
    int a;

    a = 10;
    if (a == 10) a = 1;
    else a = 2;
    return a;
}
"

assert 2 "
main() {
    int a;

    a = 10;
    if (a != 10) a = 1;
    else a = 2;
    return a;
}
"

# multi if
assert 201 "
main() {
    int a;
    int b;

    a = 10;
    b = 10;
    if (a == 10)
        a = 1;
    else
        a = 2;

    if(b != 10)
        b = 100;
    else
        b = 200;

    return a + b;
}
"

# TODO: failする
# assert 199 "
# a = 10;
# b = 10;
# if (a == 10)
#     a = 1;
# else
#     a = 2;

# if(b != 10)
#     b = 100;
# else
#     b = -200;

# return a + b;
# "

# nested if
assert 210 "
main() {
    int a;
    int b;

    a = 10;
    b = 10;

    if (a == 10)
        if(b != 10)
            b = 100;
        else
            b = 200;
    else
        a = 2;

    return a + b;
}
"

assert 5 "
main() {
    int a;

    a = 0;
    while(a < 5)
        a = a + 1;

    return a;
}
"

assert 11 "
main() {
    int a;

    a = 0;

    int i;
    for (i = 0; i <= 10; i = i+1) a = a + i;
    return i;
}
"

assert 55 "
main() {
    int a;

    a = 0;

    int i;
    for (i = 0; i <= 10; i = i+1) a = a + i;
    return a;
}
"

assert 100 "
main() {
    int a;

    a = 0;
    for (;a < 100;) a = a + 1;
    return a;
}
"

# inf loop
assert 100 "
main() {
    int a;

    a = 0;
    for(;;)
        if (a > 10)
            return 100;
        else
            a = a + 1;
    return 0;
}
"

# block
assert 100 "
main() {
    int a;

    a = 0;
    for(;;) {
        a = a + 1;
        if (a > 10) return 100;
    }
    return -1;

}
"

assert 1 "
main() {
    int a;
    int b;

    a = 1;
    b = 1;

    if (a == 1) {
        if (b == 1) {
            return 1;
        } else {
            return 2;
        }
    } else {
        if (b == 1) {
            return 3;
        } else {
            return 4;
        }
    }
}
"

assert 2 "
main() {
    int a;
    int b;

    a = 1;
    b = 0;

    if (a == 1) {
        if (b == 1) {
            return 1;
        } else {
            return 2;
        }
    } else {
        if (b == 1) {
            return 3;
        } else {
            return 4;
        }
    }
}
"

assert 3 "
main() {
    int a;
    int b;

    a = 0;
    b = 1;

    if (a == 1) {
        if (b == 1) {
            return 1;
        } else {
            return 2;
        }
    } else {
        if (b == 1) {
            return 3;
        } else {
            return 4;
        }
    }
}
"

assert 4 "
main() {
    int a;
    int b;

    a = 0;
    b = 0;

    if (a == 1) {
        if (b == 1) {
            return 1;
        } else {
            return 2;
        }
    } else {
        if (b == 1) {
            return 3;
        } else {
            return 4;
        }
    }
}
"

# func call
assert 1 "main(){ return foo(); }"
assert 17 "main(){ return foo2(10, 7); }"
assert 16 "main(){ return foo3(10, 7, -1); }"


# pointer, deref
assert 3 "
main() {
    int x;
    int y;

    x = 3;
    y = &x;
    return *y;
}
"

# a hack which uses this compiler's character that local variables are placed sequentially.
# 0X10 x 3
# 0X08 y 5(any value is fine for this example)
# 0X00 z 0X08 + 0X8 = 0X10(x's address)
assert 3 "
main() {
    int x;
    int y;
    int z;

    x = 3;
    y = 5;
    z = &y + 8;
    return *z;
}
"

echo OK
