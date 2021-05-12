This c_compiler is based on:
- [低レイヤを知りたい人のためのCコンパイラ作成入門](https://www.sigbus.info/compilerbook)
- [[YouTube] Cコンパイラ作ってみる](https://www.youtube.com/playlist?list=PLp_EUEO9JJP08ApAdaTYKHsonrLyKzdvp)


... and get help from these books as reference.
- [コンパイラ: 作りながら学ぶ](https://amzn.to/3ulY7kc)
- [コンピュータシステムの理論と実装 ―モダンなコンピュータの作り方](https://amzn.to/3uiyfFZ)
- [Go言語でつくるインタプリタ](https://amzn.to/2PKFrvo)

## Directry structure
```text
.
├── src
│   ├── baricc.h      # all func decl are placed here
│   ├── util.c        # where to put common functions
│   ├── main.c        # entry point
│   ├── tokenize.c    #
│   ├── parse.c       #
│   └── codegen.c     #
│
├── test
│   └── test.c        # place all test cases here
│ 
├── scripts
│   ├── test.sh       # build binary by using cc and run test
│   ├── self.sh       # build binary by itself
│   └── self_test.sh  # run test by using self compiled binary
│
├── Dockerfile
├── docker-compose.yml
├── Makefile
└── sandbox           # for exploring C. not used by src. (but used by test)
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
- [x] baricc.h
- [x] tokenize.c
- [x] parse.c
- [x] codegen.c
- [x] util.c
- [x] main.c

```bash
make self > tmp.s
# use cc as linker.
cc -static -o baricc_self tmp.s

./baricc_self baricc.h tokenize.c parse.c codegen.c util.c
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
- void(implemented just as an alias to int..)
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
- [ ] support ++, -- operation for pointer
- [ ] rest parameters
- [ ] macro
- [ ] stdout, stderr, FILE

