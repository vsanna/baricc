#include "9cc.h"
LVar* locals[];
int cur_scope_depth;
StringToken* strings;

// char* argregs[] = {"rdi", "rsi", "rdx", "rcx", "r8", "r9"};
// サイズ(byte)ごとのレジスタのset
static char* argreg1[] = {"dil", "sil", "dl", "cl", "r8b", "r9b"};
static char* argreg2[] = {"di", "si", "dx", "cx", "r8w", "r9w"};
static char* argreg4[] = {"edi", "esi", "edx", "ecx", "r8d", "r9d"};
static char* argreg8[] = {"rdi", "rsi", "rdx", "rcx", "r8", "r9"};

// TODO: ここが評価(コード生成)ロジックの中心なので別ファイルに後で移す.
// 構文木からアセンブラを作るところまで一気に進める
int if_id = 0;
// NOTE: ここに手を加えるときには細心の注意を払う!
// 出力されたアセンブラをみてどこがおかしいかを把握するのは至難
void gen(Node* node) {
    int id = if_id;
    int num_args = 0;
    Type* type;

    switch (node->kind) {
        case ND_STRING:
            // TODO: push offsetを調べる
            printf("  push offset .LC%d\n", node->string->index);
            return;
        case ND_NUM:
            printf("  push %d\n", node->val);
            return;
        case ND_GVAR_DEF:
            // TODO: 意味調べる. staticな場所からどれだけの場所を確保するか?
            printf("%s:\n", node->varname);
            printf("  .zero %d\n", node->varsize);
            return;
        case ND_GVAR:
        case ND_LVAR:
            // 変数の評価 = 「値」をスタックにpush

            // 左辺値のアドレスをスタックの先頭にpushし、
            gen_val(node);

            // TODO: わからぬ.
            // arrayの場合はaddressを入れたままで終わってOK
            // arrayはpointerのようにあつかうため.(DEREFと似たことをしている)
            type = get_type(node);
            if (type && type->ty == ARRAY) {
                return;
            }

            // そのアドレスをraxにいれ
            printf("  pop rax\n");

            /*
            そのアドレスにある値をraxにいれる。
            指定したアドレスからデフォルトでは8個分のアドレスにある値をとってきてしまうので、
            必要な長さを指定する
            */
            if (type && type->ty == CHAR) {
                // TODO: what's this
                printf("  movsx rax, BYTE PTR [rax]\n");
            } else if (type && type->ty == INT) {
                // TODO: what's this
                printf("  movsxd rax, DWORD PTR [rax]\n");
            } else {
                printf("  mov rax, [rax]\n");
            }

            // その値をスタックの先頭にpush
            printf("  push rax\n");
            return;
        case ND_ASSIGN:
            type = get_type(node);
            // 左辺の左辺値のアドレスをstackにpush
            gen_val(node->lhs);
            // 右辺を計算した値をstackにpush
            gen(node->rhs);
            // rdiに計算結果をpopしてrdiにいれる
            printf("  pop rdi\n");
            // 左辺のアドレスをpopしてraxに入れる
            printf("  pop rax\n");

            /*
            raxの示すアドレスに64bitのレジスタをmovすると、示すアドレスから数えて8個分の
            アドレスに値が書き込まれることになる

            8B未満のデータの配列を連続して書き込む場合はそれだと不要な書き込みが発生するので、
            レジスタの下位Nbitだけを書き込むことをaliasを用いて指定する
            */
            if (type && type->ty == CHAR) {
                // NOTE: dil = rdiの下位8bitのalias
                printf("mov [rax], dil\n");
            } else if (type && type->ty == INT) {
                // NOTE: edi = rdiの下位32bitのalias
                printf("  mov [rax], edi\n");
            } else {
                printf("  mov [rax], rdi\n");
            }

            // rdiの値 = 計算結果をstackの頂点に入れておく
            // こうすることで a = b = 10 みたいな式がかける
            printf("  push rdi\n");
            return;
        case ND_RETURN:
            gen(node->lhs);
            printf("  pop rax\n");       // 値をraxにset(ABI)
            printf("  mov rsp, rbp\n");  // epilogueをreturn時にも忘れず処理
            printf("  pop rbp\n");
            printf("  ret\n");
            return;
        case ND_IF:
            if_id++;
            // lhs: cond
            // rhs: stmt(main) or else(lhs=main, rhs=alt)

            // cond
            gen(node->lhs);
            printf("  pop rax\n");
            // lhs(=cond)の結果が0(=false)だったらjump
            // つまりjump先がalt
            printf("  cmp rax, 0\n");
            // TODO: xxxが重複しないようにする
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

            return;
        case ND_WHILE:
            if_id++;
            /*
            [cond]
            je end
            [main]
            .end:
            */
            printf(".Lbegin%d:\n", id);
            gen(node->lhs);
            printf("  pop rax\n");
            printf("  cmp rax, 0\n");
            printf("  je .Lend%d\n", id);
            gen(node->rhs);
            printf("  jmp .Lbegin%d\n", id);
            printf(".Lend%d:\n", id);
            return;
        case ND_FOR:
            if_id++;
            /*
            Aをコンパイルしたコード
            .LbeginXXX:
            Bをコンパイルしたコード
            pop rax
            cmp rax, 0
            je  .LendXXX
            Dをコンパイルしたコード
            Cをコンパイルしたコード
            jmp .LbeginXXX
            .LendXXX:
            */
            // 初期化
            if (node->lhs->lhs != NULL) {
                gen(node->lhs->lhs);
            }
            printf(".Lbegin%d:\n", id);

            // 条件
            if (node->lhs->rhs != NULL) {
                gen(node->lhs->rhs);
            } else {
                printf("  push 1\n");  // 常にtrue
            }
            printf("  pop rax\n");
            printf("  cmp rax, 0\n");
            printf("  je .Lend%d\n", id);

            // 実処理
            gen(node->rhs->rhs);

            // 後処理
            if (node->rhs->lhs != NULL) {
                gen(node->rhs->lhs);
            }

            printf("  jmp .Lbegin%d\n", id);
            printf(".Lend%d:\n", id);
            return;

        case ND_BLOCK:
            for (int i = 0; node->block[i] != NULL; i++) {
                gen(node->block[i]);
            }
            return;
        case ND_FUNC_CALL:
            if_id++;
            /*
            call前に引数をABIの定義するレジスタに登録する
            TODO: epilogueでpushするんじゃないのか?
                -> epilogueは関数のラベルの直下で書くもの.
                -> つまりココではない!
            TODO: 一旦引数は6個までサポート
            */

            // 引数をまず評価してはstackにpushしていく
            for (int i = 0; node->block[i] != NULL; i++) {
                gen(node->block[i]);
                num_args++;
            }
            if (num_args > 6) {
                error_at(token->str, "invalid number of args. lteq 6.");
            }

            // 引数を"後ろから"ABI指定のregisterに投入
            // 現在stackの一番上には最後の引数を評価した値が入っている
            for (int i = num_args - 1; i >= 0; i--) {
                printf("  pop %s\n", argreg8[i]);
            }

            // RSPを16の倍数にする調整
            // printf("  mov rax, rsp\n");
            // printf("  and rax, 15\n");  // 下位4bitがすべて0なら16の倍数
            // printf("  cmp rsi, 0\n");
            // printf("  je .L.callDirectly.%d\n", id);
            // printf("  mov rax, 0\n");
            // printf("  sub rsp, 8\n");
            // printf("  call %s\n", node->funcname);
            // printf("  add rsp, 8\n");
            // printf("  jmp .L.called.%d\n", id);
            // // 次のラインをreturn addrとしてstackに積みつつ関数のところにjump
            // printf(".L.callDirectly.%d:\n", id);
            // printf("  mov rax, 0\n");
            // printf("  call %s\n", node->funcname);
            // printf(".L.called.%d:\n", id);
            // printf("  push rax\n");  // raxに返り値が格納されている(ABI)
            // return;

            printf("  mov rax, rsp\n");
            printf("  and rax, 15\n");
            printf("  jnz .L.call.%03d\n", id);
            printf("  mov rax, 0\n");  // ALを0クリアして可変長引数に対応する.
                                       // TODO: なにそれ
            printf("  call %s\n", node->funcname);
            printf("  jmp .L.end.%03d\n", id);
            printf(".L.call.%03d:\n", id);
            printf(
                "  sub rsp, 8\n");  // TODO:
                                    // rspの値が16の倍数でないとき、8をひけばいいだけ?
            printf("  mov rax, 0\n");  // ALを0クリアして可変長引数に対応する.
                                       // TODO: なにそれ
            printf("  call %s\n", node->funcname);
            printf("  add rsp, 8\n");
            printf(".L.end.%03d:\n", id);
            printf("  push rax\n");  // FIXME あってる？？
            return;
        case ND_FUNC_DEF:
            // label
            printf(".global %s\n", node->funcname);
            printf("%s:\n", node->funcname);

            // プロローグ
            /*
            ret address  <- (1) call直後のRSP
            caller's RBP <- (2) ましたの2命令が終わったあとのRSP, RBP
            arg0
            arg1
            ...
            */
            printf("  push rbp\n");
            printf("  mov rbp, rsp\n");

            // 引数の数を覗いた変数の数だけrspを"さらに"ずらして、変数領域を確保する
            // この関数のためだけのlocals領域を関数フレーム先頭に確保するイメージ
            if (locals[cur_scope_depth]) {
                int offset = locals[cur_scope_depth]->offset;
                printf("  sub rsp, %d\n", offset);
            }

            // call-funcした際にABI指定のregisterに保存した引数を
            // 上の処理でずらした隙間に入れていく.
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

            // 内容
            gen(node->lhs);

            // エピローグ
            // printf("  mov rax, 0\n");
            printf("  mov rsp, rbp\n");
            printf("  pop rbp\n");
            printf("  ret\n");

            return;
        case ND_ADDR:
            /* [&の次に来る変数のアドレス]をpushする */
            gen_val(node->lhs);
            return;
        case ND_DEREF:
            /*
            [アドレスの値]をpushした上で、それから値をとってきてpushし直す
            ND_LVARとほぼ同じ処理

            ref: ND_LVARのgen
            // 左辺値のアドレスをスタックの先頭にpushし、
            gen_val(node);
            // そのアドレスをraxにいれ
            printf("  pop rax\n");
            // そのアドレスにある値をraxにいれ、
            printf("  mov rax, [rax]\n");
            // その値をスタックの先頭にpush
            printf("  push rax\n");
            */
            gen(node->lhs);
            printf("  pop rax\n");
            printf("  mov rax, [rax]\n");
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
            idiv: 符号あり除算.
            暗黙的にrdx,
            raxをとってそれを合わせたものを128bit整数とみなしてそれを引数レジスタの64bitでわり、
            商をraxに、あまりをrdxにセットする
            cqo命令を使うとraxに入っている64bitの値を128bitに伸ばしてrdx,
            raxにセットすることが出来る

            pop rdi   // stackから取り出して割る数としてset
            pop rax   // stackから取り出して割られる数としてset
            cqo       // rdx, rax <- 10 を代入する命令.
            全体で10なので、rdxは0が入る idiv rdi  // rdx,rax(10) / rdi
            を行い、商をrax, あまりをrdxにset push rax  // 答えをpush
            */
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
    }

    printf("  push rax\n");
}

/*
左辺値として扱う = そのnodeの「アドレス」をstackにpushする
*/
void gen_val(Node* node) {
    // ND_DEREFのときは右辺値扱いして「値」をstackにpushする
    if (node->kind == ND_DEREF) {
        // TODO: ->lhs を除外しても動いてしまう. なぜ
        gen(node->lhs);
        return;
    }

    if (node->kind == ND_LVAR) {
        printf("  mov rax, rbp\n");
        printf("  sub rax, %d\n", node->offset);
        printf("  push rax\n");
    } else if (node->kind == ND_GVAR) {
        printf("  push offset %s\n", node->varname);
    } else {
        error("not variable");
    }
}
