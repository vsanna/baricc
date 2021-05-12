#!/bin/bash


runTest() {
    rm tmp.s
    ./baricc "test/test.c" | grep -v "^;" > tmp.s

    cd sandbox
    cc -c func.c
    cd ..
    cc -static -o tmp tmp.s sandbox/func.o

    ./tmp
}

runTest
