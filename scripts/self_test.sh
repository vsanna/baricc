#!/bin/bash

runTest() {
    make self

    rm -f tmp.s
    rm -f tmp

    ./baricc_self "test/test.c" | grep -v "^;" > tmp.s

    # link func.c(put non implemented c feature here)
    cd sandbox
    cc -c func.c
    cd ..
    cc -static -o tmp tmp.s sandbox/func.o

    ./tmp
}

runTest
