#!/bin/bash

rm -f tmp.s

# 9cc(executable) is compiled by cc.
# NOTE: this order of files are important. files has global variables definition should come first
./9cc 9cc.h tokenize.c parse.c codegen.c main.c util.c | grep -v "^;" > tmp.s

cc -g -static -o 9cc_self tmp.s

# self compile
# ./tmp 9cc.h tokenize.c parse.c codegen.c util.c main.c
