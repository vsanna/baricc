#!/bin/bash

assert() {
    expected="$1"
    input="$2"

    ./9cc "$input" > tmp.s
    cc -o tmp tmp.s
    ./tmp
    actual="$?"

    if [ "$actual" = "$expected" ]; then
        echo "$input => $actual"
    else
        echo "$input => $expected expected, but got $actual"
        exit 1
    fi
}


# basic calculation test
assert 0 '0;'
assert 42 '42;'
assert 21 "5+20-4;"
assert 41 " 12 + 34 - 5 ;"
assert 47 '5+6*7;'
assert 15 '5*(9-6);'
assert 4 '(3+5)/2;'
assert 10 '-10+20;'
assert 10 '- -10;'
assert 10 '- - +10;'

# comparison test
assert 0 '0==1;'
assert 1 '42==42      ;'
assert 1 '0!=1;'
assert 0 '42!=42;'

assert 1 '0<1;'
assert 0 '1<1;'
assert 0 '2<1;'
assert 1 '0<=1;'
assert 1 '1<=1;'
assert 0 '2<=1;'

assert 1 '1>0;'
assert 0 '1>1;'
assert 0 '1>2;'
assert 1 '1>=0;'
assert 1 '1>=1;'
assert 0 '1>=2;'

# variables test
assert 14 "a = 3;
b = 5 * 6 - 8;
a + b / 2;"

assert 6 "
foo = 1;
bar = 2 + 3;
foo + bar;
"

# return test
assert 6 "
foo = 1;
bar = 2 + 3;
return foo + bar;
"

assert 14 "a = 3;
b = 5 * 6 - 8;
return a + b / 2;"

assert 8 "
return 3 + 5;
a = 10;
return 1;
"

# if test
assert 1 "
a = 5;
if (a == 5) a = 1;
return a;
"

assert 10 "
a = 10;
if (a == 5) a = 1;
return a;
"

assert 1 "
a = 10;
if (a != 5) a = 1;
return a;
"

assert 1 "
a = 10;
if (a == 10) a = 1;
else a = 2;
return a;
"

assert 2 "
a = 10;
if (a != 10) a = 1;
else a = 2;
return a;
"

# assert -100 "
# a = 10;
# b = 10;
# if (a == 10)
#     if(b != 10)
#         a = 100;
#     else
#         a = -100;
# else
#     a = 2;
# return a;
# "

echo OK
