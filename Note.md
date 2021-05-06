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
$ ulimit -c unlimited
$ export SEGFAULT_SIGNALS="all"
# g optionをコンパイラにつけておく
$ make test
$ gdb 9cc core
```

## 難所
- 自由文法をBNFで書き下す能力(簡単ではない)
- それをコードにマッピングする能力
    - 簡単ではない
    - たとえばread_define_headなど
    - 初期化式も複雑
- 同じようなnode、たとえばND_LVARであっても、左辺と右辺で役割が異なったりする。
    - node = 構文木の中での役割であり、見た目が似ていても異なる仕事をするなら別のnodeにする
    - ただし、parse時には同一tokenとして渡ってくるので、bnfを工夫するなりなんなりで今きたtokenAはnodeAなのかnodeBとして解釈するべきなのかは明らかになっている必要がある
- アセンブラへの変換
    - 比較的かんたんではあるが、アセンブラ自体のことをよく知らないと行けない
- bugったときの対応
    - テストコードは「あったほうがよい」ではなくて、「ないと無理」
    - こまめなcommitと手厚いtestでいつでもresetできる精神状態が必須
- off by one が難しい
    - 各parse関数には「current tokenがなんのときにこの関数に入り、どの位置で出ていくか」を明確に定義する