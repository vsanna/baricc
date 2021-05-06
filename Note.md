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


$ gdb 9cc
# breakpointをセット file:line
> b codegen.c:61
> run "test/test.c"

> bt :     backtrace表示
> l :      前後のソースをいい感じに出してくれる
> i lo :   ローカル変数一覧
> i args : 引数一覧
> p variable : ex: p node->type)
> n : ステップ実行
> s : ステップ実行(funcに入る)
> c : 次のbreak point

ref: https://qiita.com/arene-calix/items/a08363db88f21c81d351
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
- 配列. 配列特有の機能を一部サポートしながらもいかにpointerに書き換えていくか


