
This c_compiler is based on:
- [低レイヤを知りたい人のためのCコンパイラ作成入門](https://www.sigbus.info/compilerbook)
- [Cコンパイラ作ってみる](https://www.youtube.com/playlist?list=PLp_EUEO9JJP08ApAdaTYKHsonrLyKzdvp)


... and get help from these books as reference.
- [コンパイラ: 作りながら学ぶ](https://amzn.to/3ulY7kc)
- [コンピュータシステムの理論と実装 ―モダンなコンピュータの作り方](https://amzn.to/3uiyfFZ)
- [Go言語でつくるインタプリタ](https://amzn.to/2PKFrvo)

## Directry structure
```text
.
├── src
│   ├── main.c      #
│   ├── 9cc.h       #
│   ├── tokenize.c  # = parse.c in the book
│   ├── parse.c     # = part of codegen.c in the book
│   └── codegen.c   # = part of codegen.c in the book.
│                       extracting stuff related with gen function.
├── Dockerfile
├── docker-compose.yml
├── Makefile
├── test.sh
└── func                # for exploring C. not used by src.
```

## Start development environment
```bash
$ docker-compose up -d
$ docker-compose exec app bash
```

## Run test
```bash
$ make test
```

## Self Compile
- [x] 9cc.h
- [x] tokenize.c
- [x] parse.c
- [x] codegen.c
- [x] util.c

```bash
make self > tmp.s
# use cc as linker.
cc -static -o 9cc_self tmp.s

./9cc_self 9cc.h tokenize.c parse.c codegen.c util.c
```

## supported feature
- +, -, *, /
- ==, !=, <, >, <=, >=
- !
- ||, &&
- a++, a--, ++a, --a
- bit: ~, |, &, ^
- for, while, if
- int, char
- void(implemented roughly)
- pointer: ref, deref
- array
- sizeof
- enum
- struct
- break
- continue
- witch
- escape in string
- #include
    - you can write #include, but this compiler just ignores all macro statement.
- nested type
- typedef struct A A;
- ternary operator

## not supported features
- [ ] static
- [ ] ++, -- のptr対応
- [ ] rest parameters
- [ ] macro

