#!/bin/bash

rm -f tmp.s
rm -f tmp

# baricc(executable) is compiled by cc.
# NOTE: this order of files are important. files has global variables definition should come first
./baricc src/baricc.h src/tokenize.c src/parse.c src/codegen.c src/main.c src/util.c | grep -v "^;" > tmp.s

# use cc as a linker
cc -g -static -o tmp tmp.s

rm -f tmp.s

# self compile
./tmp src/baricc.h src/tokenize.c src/parse.c src/codegen.c src/main.c src/util.c | grep -v "^;" > tmp.s

cc -g -static -o baricc_self tmp.s
