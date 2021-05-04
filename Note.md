# アセンブラを渡す
cc -o main main.c
./main 123
cc -o tmp tmp.s
./tmp
echo $?

## 機械語とアセンブラ
### アセンブラ
objdump -d -M /bin/ls

c -> ml
cc -o test1 test1.c

assembler -> mld
cc -o test2 test2.s
アセンブラの拡張子はs

### debug
```bash
$ export SEGFAULT_SIGNALS="all"
# g optionをコンパイラにつけておく
$ make test
$ gdb 9cc core
```