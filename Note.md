# Note


## how to try assembler
```bash
# get executable file from c source
cc -o hello hello.c
./hello 123

# get assembler code from c source
cc -masm=intel -S -o hello.s hello.c
cat hellomain.s

# get executable file from assembler code
cc -o hello hello.s

# to see binary
objdump -d -M hello
```


## debug tips
### how to debug for self-hosting
- make a copy of target file to test
- $ gdb baricc
    - use executable file(baricc here) to debug its behavior.
- > run "baricc.h" "copy_of_target.c"
    - ≒ ./baricc "baricc.h" "copy_of_target.c"
- To detect where the error happens, comment out most of content in copy_of_target.c at first. and try to comment in step by step.

### quick tutorial for gdb
```bash
# prep
$ ulimit -c unlimited
$ export SEGFAULT_SIGNALS="all"
$ make test


# start gdb
$ gdb baricc
# set breakpoint
> b codegen.c:61
# set breakpoint on executable
> b ${addres} ... ex: b 31663 => this will stop at `31663     push rax`
# run baricc with args
> run "test/test.c"

# other useful commands in gdb
> bt         : show backtrace
> l          : show lines around current breakpoint
> i lo       : show local variables
> i args     : show arguments of current function
> p ${var}   : print var. ex: p node->type
> n          : step to next line.
> s          : step to next line and also step into function call
> c          : continue to next break point
> i r        : show registers (useful for debugging assembly..)
> p ${reg}   : print value of the register (useful for debugging assembly..)
> x/10dw ${address} : print value in the specified address with format ... ex: x/10dw ${address} 0x7ffe6f799b44
> x/d $rsp   : see the value on the top of stack

ref: https://qiita.com/arene-calix/items/a08363db88f21c81d351
```


## memorandum
### difficult points
- ability to write down CFG(context free grammer) as eBNF.
- ability to map the BNF patterns to codes.
    - how to read token and build node tree
- similar nodes(ex. ND_LVAR) works differently in different places
    - ex. ND_LVAR. it pushes its adddress on left side, but its value on right side.
    - it's better to define another ND_* type for different role, I think.
    - but token is the same for the same item even in the different places, so we need to design BNF carefully so that we can know what node to use for the token according to the context.
- assembler code generation
    - it's relatively easier than parsing
- when you get a bug
    - First, test is not important for compiler, but NECESSARY. Without code, any change cannot be made.
        - and also it's imporant to commit even for small change so that you can reset your current change at any time.
    - When you get a bug:
        - show token list. off-by-one error is always waiting for you.
            - it's better to have documents which clarify "when current token is xxxx, this func is called and token will move to yyyyy"
        - check current node's kind. it's always not what you expect
### other
- it should translate items which priority is lower because items with high priority should go to lower leaf.
- behavior of `#include`
    - there are many .h files in /usr/include
    - first, it looks up from relative path
    - if it cannot find the target, it checks /usr/include
    - it seems that  /usr/lib/x86_64-linux-gnu/libc.a is its actual body
    - (in this compiler, we just ignore all macro syntac.)
- array is another type of pointer, but it's actually alias of pointer.