#include "baricc.h"
// sets of alias based on byte size.
// ex.
// dil  = least 1byte of rdi
// di   = least 2bytes of rdi
// edi  = least 4bytes of rdi
char* argreg1[] = {"dil", "sil", "dl", "cl", "r8b", "r9b"};
char* argreg2[] = {"di", "si", "dx", "cx", "r8w", "r9w"};
char* argreg4[] = {"edi", "esi", "edx", "ecx", "r8d", "r9d"};
char* argreg8[] = {"rdi", "rsi", "rdx", "rcx", "r8", "r9"};

// when we use jmp with label, we must increment this value.
int if_sequence = 0;
int break_sequence = 0;
int continue_sequence = 0;

// NOTE: BE CAREFUL when you change here.
// It's not easy to find bugs in assembler.
void gen(Node* node) {
    if (node == NULL) {
        error0("node must not be NULL");
    }
    int id = if_sequence;
    int original_brk = 0;
    int original_cnt = 0;
    int num_args = 0;
    Type* type;
    Node* n;

    switch (node->kind) {
        case ND_LOGAND:
            if_sequence++;
            // evalulate from left item, and once false is found, it leaves here
            // and jump to else clause
            gen(node->lhs);
            printf("  pop rax\n");
            printf("  cmp rax, 0\n");
            printf("  je .Lfalse%d\n", id);
            gen(node->rhs);
            printf("  pop rax\n");
            printf("  cmp rax, 0\n");
            printf("  je .Lfalse%d\n", id);
            // when it comes here, cond is true so push 1 as true
            printf("  push 1\n");
            printf("  jmp .Lend%d\n", id);
            printf(".Lfalse%d:\n", id);
            printf("  push 0\n");
            printf(".Lend%d:\n", id);
            return;
        case ND_LOGOR:
            if_sequence++;
            // evaluate from left item, and once true is found, it leaves here
            // and jump to else caluse
            gen(node->lhs);
            printf("  pop rax\n");
            printf("  cmp rax, 0\n");
            printf("  jne .Ltrue%d\n", id);
            gen(node->rhs);
            printf("  pop rax\n");
            printf("  cmp rax, 0\n");
            printf("  jne .Ltrue%d\n", id);
            // when it comes here, cond is false so push 1 as true
            printf("  push 0\n");
            printf("  jmp .Lend%d\n", id);
            printf(".Ltrue%d:\n", id);
            printf("  push 1\n");
            printf(".Lend%d:\n", id);
            return;
        case ND_BITNOT:
            gen(node->lhs);
            printf("  pop rax\n");
            printf("  not rax\n");
            printf("  push rax\n");
            return;
        case ND_NOT:
            // just compare evaluated value with 0
            gen(node->lhs);
            printf("  pop rax\n");
            printf("  cmp rax, 0\n");
            printf("  sete al\n");  // result is stored in al(=rax)
            printf("  movzb rax, al\n");
            printf("  push rax\n");
            return;
        case ND_PRE_INC:
            // evaluate `++a` as two operation
            // 1. a + 1
            // 2. push a
            // ND_ASSIGN pushes its lhs variable's value at last, so it's fine
            // just to gen ND_ASSIGN here.
            n = new_node(ND_ASSIGN);
            n->lhs = node->lhs;
            n->rhs = new_binary(ND_ADD, node->lhs, new_num(1));
            gen(n);
            return;
        case ND_SUF_INC:  // a++
            // do operation of ND_PRE_INC first
            // after that, decrement the top value on stack
            gen(new_binary(ND_PRE_INC, node->lhs, NULL));
            printf("  push 1\n");
            printf("  pop rdi\n");
            printf("  pop rax\n");
            printf("  sub rax, rdi\n");
            printf("  push rax\n");
            return;
        case ND_PRE_DEC:
            n = new_node(ND_ASSIGN);
            n->lhs = node->lhs;
            n->rhs = new_binary(ND_SUB, node->lhs, new_num(1));
            gen(n);
            return;
        case ND_SUF_DEC:
            gen(new_binary(ND_PRE_DEC, node->lhs, NULL));
            printf("  push 1\n");
            printf("  pop rdi\n");
            printf("  pop rax\n");
            printf("  add rax, rdi\n");
            printf("  push rax\n");
            return;
        case ND_STRING:
            // TODO: learn push offset {symbol, label}
            printf("  push offset .LC%d\n", node->string->index);
            return;
        case ND_NUM:
            printf("  push %d\n", node->val);
            return;
        case ND_GVAR_DEF:
            /*
                int a = 3;
                char b[] = "foobar";
                int *c = &a;
                char *d = b + 3;

                register int value with type(size) and lable in .data space
                ex: int a = 3; is translated as:

                a:
                  .long 3

                register string value with type(size) and label in .data space
                ex: char b[] = "foobar\0";

                b:
                  .byte 0x66 // 'f'
                  .byte 0x6f // 'o'
                  .byte 0x6f // 'o'
                  .byte 0x62 // 'b'
                  .byte 0x61 // 'a'
                  .byte 0x72 // 'r'
                  .byte 0    // '\0'

                register address value with type(size) and label
                we can use labels which are defined beforehand
                ex: int *c = &a;
                c:
                  .quad a

                we can do some calc in .data space
                ref: https://mfumi.hatenadiary.org/entry/20121231/1356880556
                d:
                  .quad b + 3

                // TODO: learn what size are available in .data space
                .quad
                .byte
                .string
                .ascii
                .zero
            */

            printf("%s:\n", node->varname);

            if (node->var->init == NULL) {
                printf("  .zero %d\n", node->varsize);
                return;
            }

            // array's initializer doesn't always have block. ex: g_msg2[4] =
            // "bar";
            if (node->type->ty == ARRAY && node->var->init->block) {
                for (int i = 0; node->var->init->block[i]; i++) {
                    if (node->var->init->block[i]->kind == ND_PADDING) {
                        printf("  .zero 0x%x\n",
                               node->var->init->block[i]->size);
                        continue;
                    }
                    switch (node->var->init->block[i]->type->ty) {
                        case INT:
                            // %x: Hexadecimal(16)
                            printf("  .long 0x%x\n",
                                   node->var->init->block[i]->val);
                            break;
                        case CHAR:
                            printf("  .byte 0x%x\n",
                                   node->var->init->block[i]->val);
                            break;
                        case PTR:
                            printf("  .quad .LC%d\n",
                                   node->var->init->block[i]->string->index);
                            break;
                        default:
                            break;
                    }
                }
                return;
            }
            // TODO: support global variable struct initializer

            // when string
            if (node->var->init->kind == ND_STRING) {
                // strings are registed with .LC%d labels in .data space
                // we need to

                // TODO: understand in more detail
                if (node->type->ty == ARRAY) {
                    // 1. char a[3] = "hoge"
                    printf("  .string \"%s\"\n",
                           node->var->init->string->value);
                } else {
                    // 2. char *a = "hoge". a is pointer.
                    printf("  .quad .LC%d\n", node->var->init->string->index);
                }
                return;
            }

            // when int
            printf("  .long 0x%x\n", node->var->init->val);
            return;
        case ND_MEMBER:
        case ND_GVAR:
        case ND_LVAR:
            // evaulation of variables means pushing their "values" in stack.

            // 1. evaluate lhs variabel as lvalue == push its address in stack
            gen_val(node);

            // TODO: understand in more details
            type = get_type(node);
            if (type && type->ty == ARRAY) {
                return;
            }

            /*
            DEREF operation is to push a value of specified address in stack.
            So, first compiler pushes an address of variable, and replace the
            value with its actual value
            */
            // 2. push the variable's address
            printf("  pop rax\n");

            // 3. get a value of specified address
            if (type) {
                switch (type->ty) {
                    case CHAR:
                        // TODO: learn movsc, movsxd
                        printf("  movsx rax, BYTE PTR [rax]\n");
                        break;
                    case INT:
                        printf("  movsxd rax, DWORD PTR [rax]\n");
                        break;
                    default:
                        printf("  mov rax, [rax]\n");
                        break;
                }
            } else {
                printf("  mov rax, [rax]\n");
            }

            // 4. and push the value in stack
            printf("  push rax\n");
            return;
        case ND_ASSIGN:
            type = get_type(node);
            // evaluate lhs as lvalue
            gen_val(node->lhs);
            // push evaluated value of lhs
            gen(node->rhs);
            printf("  pop rdi\n");  // rdi contains value
            printf("  pop rax\n");  // rax contains variable's address

            /*
            calling mov with 64bit register will write the whole bit(=8bytes) of
            the receiver register. when we wanna write on only part of the
            receiver, we should use aliases of registers. ex. dil is an alias of
            rdi and it just hold least 8 bits of rdi. `mov [rax], dil` will copy
            only 8bits from rdi to [rax].
            */

            if (type && type->ty == CHAR) {
                // NOTE: dil = least 8 bits(1B) of rdi
                printf("  mov [rax], dil\n");
            } else if (type && type->ty == INT) {
                // NOTE: edi = least 32bits (4B) of rdi
                printf("  mov [rax], edi\n");
            } else {
                printf("  mov [rax], rdi\n");
            }

            // store rdi's value = evaluation result
            printf("  push rdi\n");
            return;
        case ND_RETURN:
            if (node->lhs) {
                gen(node->lhs);
            } else {
                // when return value is not provided(e.g. `return;`), just
                // return 0;
                gen(new_num(0));
            }
            printf("  pop rax\n");  // set evaulated value on rax(this is ABI
                                    // requirement)
            printf(
                "  mov rsp, rbp\n");  // don't forget to have epilogue on return
            printf("  pop rbp\n");
            printf("  ret\n");
            return;
        case ND_BREAK:
            if (break_sequence == 0) {
                error0("currently not in for, while");
            }
            printf("  jmp .Lend%d\n", break_sequence);
            return;
        case ND_CONTINUE:
            if (continue_sequence == 0) {
                error0("currently not in for, while");
            }
            printf("  jmp .Lcontinue%d\n", continue_sequence);
            return;
        case ND_IF:
            if_sequence++;
            // lhs: cond
            // rhs: stmt(main) or else(lhs=main, rhs=alt)

            // cond
            gen(node->lhs);
            printf("  pop rax\n");
            // if lhs(=cond)'s evaulated result is 0(=false), jump.
            printf("  cmp rax, 0\n");
            printf("  je .Lelse%d\n", id);

            if (node->rhs->kind == ND_ELSE) {
                Node* els = node->rhs;
                gen(els->lhs);
                printf("  jmp .Lend%d\n", id);
                printf(".Lelse%d:\n", id);
                gen(els->rhs);
                printf("  jmp .Lend%d\n", id);
            } else {
                gen(node->rhs);
                printf("  jmp .Lend%d\n", id);
                printf(".Lelse%d:\n", id);
            }

            printf(".Lend%d:\n", id);

            // TODO: with current impl, `if` statement stores a value which is
            // last evaluated value in cond or then or alt. To make it
            // `statement`, we should change, but if it's ok for `if` to be
            // expr, current style is fine..
            return;
        case ND_TERNARY:
            /*
                # vs if
                - ternary explicitly pushes evaluated result on stack.
                - ternary always has else clause

            kind: ND_TERNARY
            lhs:  cond
            rhs:  stmt(then) or ND_ELSE(lhs=then, rhs=alt)
            */

            if_sequence++;
            // cond
            gen(node->lhs);
            printf("  pop rax\n");
            printf("  cmp rax, 0\n");
            printf("  je .Lelse%d\n", id);

            Node* els = node->rhs;
            gen(els->lhs);  // then
            printf("  jmp .Lend%d\n", id);
            printf(".Lelse%d:\n", id);
            gen(els->rhs);  // alt
            printf("  jmp .Lend%d\n", id);

            printf(".Lend%d:\n", id);
            return;
        case ND_WHILE:
            if_sequence++;
            original_brk = break_sequence;
            break_sequence = id;
            original_cnt = continue_sequence;
            continue_sequence = id;
            /*
            while({cond}) {body}

            [cond]
            je end
            [body]
            .end:
            */
            printf(".Lbegin%d:\n", id);
            printf(".Lcontinue%d:\n", id);
            // cond
            gen(node->lhs);
            printf("  pop rax\n");
            printf("  cmp rax, 0\n");
            printf("  je .Lend%d\n", id);
            // body
            gen(node->rhs);
            printf("  jmp .Lbegin%d\n", id);
            printf(".Lend%d:\n", id);
            break_sequence = original_brk;
            continue_sequence = original_cnt;
            return;
        case ND_FOR:
            if_sequence++;
            original_brk = break_sequence;
            break_sequence = id;
            original_cnt = continue_sequence;
            continue_sequence = id;
            /*
            for({A}; {B}; {C)) D

            [A]
            .LbeginXXX:
            [B]
            pop rax
            cmp rax, 0
            je  .LendXXX
            [D]
            [C]
            jmp .LbeginXXX
            .LendXXX:

            kind: ND_FOR
            lhs:
                lhs: A: init
                rhs: B: cond
            rhs:
                lhs: C: post ops
                rhs: D: body
            */

            // A: init
            if (node->lhs->lhs != NULL) {
                gen(node->lhs->lhs);
            }
            printf(".Lbegin%d:\n", id);

            // B: cond
            if (node->lhs->rhs != NULL) {
                gen(node->lhs->rhs);
            } else {
                printf("  push 1\n");  // if cond is not given, it's always
                                       // true. ex: for(;;) {} == while(true) {}
            }
            printf("  pop rax\n");
            printf("  cmp rax, 0\n");
            printf("  je .Lend%d\n", id);

            // D: body
            gen(node->rhs->rhs);

            // C: post ops
            // continue stmt in for loop will jump right before post ops.
            printf(".Lcontinue%d:\n", id);
            if (node->rhs->lhs != NULL) {
                gen(node->rhs->lhs);
            }

            printf("  jmp .Lbegin%d\n", id);
            printf(".Lend%d:\n", id);
            break_sequence = original_brk;
            continue_sequence = original_cnt;
            return;
        case ND_BLOCK:
            for (int i = 0; node->block[i] != NULL; i++) {
                gen(node->block[i]);
            }
            return;
        case ND_SWITCH:
            /*
            switch({expr}) {
                case {label}: --> collected as ND_CASE and stored in ND_SWITCH's
            next_case and default_case members {body};   --> collected in
            ND_SWITCH's rhs
            }

            kind: ND_SWITCH
            lhs: expr
            rhs: all bodies in each case segments
            */
            original_brk = break_sequence;
            break_sequence = id;

            // expr
            gen(node->lhs);
            printf("  pop rax\n");

            // labels
            for (Node* n = node->next_case; n; n = n->next_case) {
                // specify unique label id for each case so that cpu can jump to
                // one of them directly.
                n->case_label = ++if_sequence;
                printf("  cmp rax, %d\n", n->val);
                printf("  je .Lcase%d\n", n->case_label);
            }
            if (node->default_case) {
                node->default_case->case_label = ++if_sequence;
                printf("  jmp .Lcase%d\n", node->default_case->case_label);
            }
            // for the case where no lable matches the given cond.
            printf("  jmp .Lend%d\n", id);

            // body
            // in this body, we may have break statements which jump to Lend
            // label right below.
            gen(node->rhs);
            printf(".Lend%d:\n", id);

            break_sequence = original_brk;
            return;
        case ND_CASE:
            printf(".Lcase%d:\n", node->case_label);
            return;
        case ND_FUNC_CALL:
            /*
            1. puts arguments in registers in manner defined by ABI
                - In func def, we retrieve these registered values
            2. adjust rsp so that it is multiple of 16 (this is ABI requirement)
            3. call func
            4. push rax after returning (returning value is put in rax. this is
            ABI requirement)

            Q: don't we have to do this in epilogue?
                - No. epilogues is in function definition.
            TODO: currently, function can have at most 6 argumnets. we should
            levarage stack if we need more.

            kind: ND_FUNC_CALL
            block: now putting args in block member. node->args is for func def.

            */

            if_sequence++;

            // evaluate args and push them into stack
            for (int i = 0; node->block[i] != NULL; i++) {
                gen(node->block[i]);
                num_args++;
            }
            if (num_args > 6) {
                error_at0(token->str, "invalid number of args. lteq 6.");
            }

            // registere evaluated values in stack to registers.
            // now last argument is put on the top of stack.
            for (int i = num_args - 1; i >= 0; i--) {
                printf("  pop %s\n", argreg8[i]);
            }

            // adjust rsp so that it can be multiple of 16.
            printf("  mov rax, rsp\n");
            printf("  and rax, 15\n");
            printf("  jnz .L.call.%03d\n", id);
            // clear al(least 8 bits of rax) with 0 value. this is prep for rest
            // parameters.
            // TODO: support rest parameters
            printf("  mov rax, 0\n");
            printf("  call %s\n", node->funcname);
            printf("  jmp .L.end.%03d\n", id);
            printf(".L.call.%03d:\n", id);
            // TODO: is it ok just sub 8 when it's not multiple of 16?
            printf("  sub rsp, 8\n");
            // clear al(least 8 bits of rax) with 0 value. this is prep for rest
            // parameters.
            printf("  mov rax, 0\n");
            printf("  call %s\n", node->funcname);
            printf("  add rsp, 8\n");
            printf(".L.end.%03d:\n", id);

            // push value in rax. this means we always get returning value from
            // functions.
            printf("  push rax\n");
            return;
        case ND_FUNC_DEF:
            /*
            int* hoge(char a, int b) {body}

            kind: ND_FUNC_DEF
            funcname: ident of funcname
            args: arguments' definitions
            lhs: body

            TODO: Currently ND_FUNC_DEF doesn't have type information of
            returning value since we don't have semantic analysis.

            locals[cur_scope_depth]: local variable's definitions.


            memory layout:
            -------rbp
            arg0
            arg1
            ...
            arg6
            local variable0
            local variable1
            local variable2
            ......
            local variableN


            */

            // label
            printf(".global %s\n", node->funcname);
            printf("%s:\n", node->funcname);

            /*
            prologue
            1. push ret address          <- this is done in `call` intro. `call`
            = push ret address + jump to func label
            2. push caller's RBP         <- to restore state when this func is
            finished.
            3. push args from registers  <- ABI requirement.
            ...
            */
            printf("  push rbp\n");
            printf("  mov rbp, rsp\n");

            // push down stack to store space for local variables as many as
            // local variables this func has(not including args) we use this
            // space for temporal local variables for this func.
            if (locals[cur_scope_depth]) {
                int offset = locals[cur_scope_depth]->offset;
                printf("  sub rsp, %d\n", offset);
            }

            // copy arguments from registers to space right below rbp.
            // TODO: doesn't this conflict with local variables?
            for (int i = 0; node->args[i]; i++) {
                if (node->args[i]->varsize == 1) {
                    printf("  mov [rbp-%d], %s\n", node->args[i]->offset,
                           argreg1[i]);
                } else if (node->args[i]->varsize == 4) {
                    printf("  mov [rbp-%d], %s\n", node->args[i]->offset,
                           argreg4[i]);
                } else {
                    printf("  mov [rbp-%d], %s\n", node->args[i]->offset,
                           argreg8[i]);
                }
            }

            // body
            gen(node->lhs);

            // epilogue
            printf("  mov rsp, rbp\n");
            printf("  pop rbp\n");
            printf("  ret\n");

            return;
        case ND_ADDR:
            /*
            push address of the variable
            kind: ND_ADDR
            lhs: ND_LVAR
            */
            gen_val(node->lhs);
            return;
        case ND_DEREF:
            /*
            push "value" of the variable(this must be ptr), and do deref ops.
            almost same as what ND_LVAR does
            */
            // evaluate the variable(ptr) as right variable to get address of a
            // variable pointed by the given variable(ptr)
            gen(node->lhs);

            // push the address to rax
            printf("  pop rax\n");
            // and get value of the pointed variable
            type = get_type(node);
            if (type && type->ty == CHAR) {
                printf("  movsx rax, BYTE PTR [rax]\n");
            } else if (type && type->ty == INT) {
                printf("  movsxd rax, DWORD PTR [rax]\n");
            } else {
                printf("  mov rax, [rax]\n");
            }
            // then push the value on stack
            printf("  push rax\n");
            return;
    }

    gen(node->lhs);
    gen(node->rhs);

    printf("  pop rdi\n");
    printf("  pop rax\n");

    switch (node->kind) {
        case ND_ADD:
            printf("  add rax, rdi\n");
            break;
        case ND_SUB:
            printf("  sub rax, rdi\n");
            break;
        case ND_MUL:
            printf("  imul rax, rdi\n");
            break;
        case ND_DIV:
            printf("  cqo\n");
            /*
            idiv: division with signs
            it implicitly gets rdx and rax, sum them, and devide the result by
            passed register to idiv inst. it sets result in rax and remains in
            rdx with cqo inst, it consider the result as 128bits and set it
            across rdx, rax.

            pop rdi   // set value as devider
            pop rax   // set value as devidee
            cqo       // set 10 as 128bit across rdx, rax. rdx is zero cleared
            here.
                      // TODO: ???rax will be 10?
            idiv rdi  // (rdx(=0) + rax) / rdi

            TODO: learn sete, setne, setl, setle
            */

            // TODO: don't we need to clear rdx with zero before calling idiv?
            // devide rax by rdi
            printf("  idiv rdi\n");
            break;
        case ND_EQ:
            printf("  cmp rax, rdi\n");
            printf("  sete al\n");
            printf("  movzb rax, al\n");
            break;
        case ND_NE:
            printf("  cmp rax, rdi\n");
            printf("  setne al\n");
            printf("  movzb rax, al\n");
            break;
        case ND_LT:
            printf("  cmp rax, rdi\n");
            printf("  setl al\n");
            printf("  movzb rax, al\n");
            break;
        case ND_LE:
            printf("  cmp rax, rdi\n");
            printf("  setle al\n");
            printf("  movzb rax, al\n");
            break;
        case ND_BITXOR:
            printf("  xor rax, rdi\n");
            break;
        case ND_BITOR:
            printf("  or rax, rdi\n");
            break;
        case ND_BITAND:
            printf("  and rax, rdi\n");
            break;
    }

    printf("  push rax\n");
}

/*
gen_val treat the given node(ND_LVAR) as lvalue.
That means baricc pushes its "address" in stack here for assign operation.
*/
void gen_val(Node* node) {
    // when node is ND_DEREF, treat it as right-value(= push its "value" in
    // stack)
    if (node->kind == ND_DEREF) {
        gen(node->lhs);
        return;
    }

    if (node->kind == ND_LVAR) {
        printf("  mov rax, rbp\n");
        printf("  sub rax, %d\n", node->offset);
        printf("  push rax\n");
    } else if (node->kind == ND_GVAR) {
        printf("  push offset %s\n", node->varname);
    } else if (node->kind == ND_MEMBER) {
        // add offset of the member
        gen_val(node->lhs);
        printf("  pop rax\n");
        printf("  add rax, %d\n", node->member->offset);
        printf("  push rax\n");
    } else {
        error0("not variable");
    }
}
