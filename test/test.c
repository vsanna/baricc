int g_a;
int g_b[10];
int g_a_init3 = 3;
int g_array[5] = {0, 1, 2, 3, 4};

char g_array2[5] = {5, 6, 7, 8, 12};
char *g_msg1 = "foo";
char g_msg2[4] = "bar";
char *user_input;

// TODO: array of string is not supported yet
char *g_strings[] = {"abc", "def"};

// typedef is available in global only.
typedef int Int;
typedef char *String;
struct Hoge {
    int a;
    char b;
    int c;
};
typedef struct Hoge StructHoge;

// TODO: fix
StructHoge hoges[4] = {
    {1, 'a', 100},
    {2, 'b', 200},
    {3, 'c', 300},
    {4, 'd', 400},
};

String strtest = "cccc";
typedef struct Hoge StructHoge;

typedef struct Nest Nest;
struct Nest {
    struct Nest *next;
    int a;
};

// `struct Nest2` and `Nest2` can be considered as almost same
typedef struct Nest2 Nest2;
struct Nest2 {
    Nest2 *next;
    int b;
};

enum HogeEnum { AAA = 10, BBB, CCC };
typedef enum Kind {
    K_A,
    K_B,
} Kind;
Kind k = K_A;

enum LastComma {
    AAA,
    BBB,  // it's allowed to put camma at the end of last item
};

// // size_t, bool are alias of int.
size_t size_t_v = 10;
bool bool_v = 1;

// just ignore prototype decl.
extern int hoge;
int assert(int expected, int actual);

int assert(int expected, int actual) {
    if (expected == actual) {
        printf(".");
        return 0;
    }
    printf("%d expected, but got %d\n", expected, actual);
    exit(1);
}

int fail() {
    printf("called failed!");
    exit(1);
}

int ok() { printf("."); }

int test_calc() {
    assert(42, 42);
    assert(21, 5 + 20 - 4);
    assert(41, 12 + 34 - 5);
    assert(47, 5 + 6 * 7);
    assert(15, 5 * (9 - 6));
    assert(4, (3 + 5) / 2);
    assert(10, -10 + 20);
    assert(10, -(-10));
    assert(10, -(-(+10)));
    assert(5, 1 + 2 * 3 - 4 / 2);
}

int test_compare() {
    assert(0, 0 == 1);
    assert(1, 42 == 42);
    assert(1, 0 != 1);
    assert(0, 42 != 42);

    assert(1, 0 < 1);
    assert(0, 1 < 1);
    assert(0, 2 < 1);
    assert(1, 0 <= 1);
    assert(1, 1 <= 1);
    assert(0, 2 <= 1);

    assert(1, 1 > 0);
    assert(0, 1 > 1);
    assert(0, 1 > 2);
    assert(1, 1 >= 0);
    assert(1, 1 >= 1);
    assert(0, 1 >= 2);

    assert(true, (0 + 2 > 1) && (10 > 1 + 1) && (-1 > 10 - 13));
    assert(true, (10 / 5) == ((100 - 50) / 25));
    assert(true, (0 + 2) == (10 / 5));
    assert(true, (0 + 2 > 1) && (10 > 1 + 1) && (-1 > 10 - 13));
    assert(true, (0 + 2 > 1) && (10 > 1 + 1) && (-1 > 10 - 13));
    assert(true, (0 + 2 > 1) && (10 > 1 + 1) && (-1 > 10 - 13));
}

int test_variable() {
    int foo;
    int bar;
    foo = 3;
    bar = 5 * 6 - 8;
    assert(3, foo);
    assert(bar, 22);
    assert(14, foo + bar / 2);
}

int inner_test_return() {
    int a;
    int b;
    a = 3;
    b = 5 * 6 - 8;
    return a + b / 2;
}

int inner_multi_return() {
    return 5;
    return 8;
}

int test_return() {
    assert(14, inner_test_return());
    assert(5, inner_multi_return());
}

int test_if() {
    if (3 != 3) {
        fail();
    }

    int a;
    a = 3;
    if (a == 3) {
        ok();
        return 0;
    }
    fail();
}

int test_while() {
    int i;
    i = 0;
    while (i <= 10) i = i + 1;
    assert(11, i);
}

int test_for() {
    int a;
    int i;
    a = 0;
    for (i = 0; i < 10; i = i + 1) a = a + 2;
    assert(10, i);
    assert(20, a);

    int b;
    b = 0;
    for (; b < 10;) b = b + 1;
    assert(10, b);
}

int inner_multi_c() {
    int b;
    b = 0;
    for (;; b = b + 1)
        if (b == 5) return b;
}
int test_multi_control_syntax() {
    int a;
    a = 3;
    if (a == 1) fail();
    if (a == 2) fail();
    if (a == 3) ok();
    assert(3, a);

    assert(5, inner_multi_c());
}

int inner_block() {
    int a;
    a = 0;
    for (;;) {
        a = a + 1;
        if (a == 5) return 10;
    }
    return 2;
}

int test_block() { assert(10, inner_block()); }

int foo() { return 1; }

int bar(int x, int y) { return x + y; }

int bar2(int x, int y, int z) { return x + y + z; }

int test_func() {
    assert(1, foo());
    assert(7, bar(3, 4));
    assert(12, bar2(3, 4, 5));
}

int inner_test_pointer01() {
    int x;
    int *y;
    x = 3;
    y = &x;
    assert(3, *y);
}
int inner_test_pointer02() {
    int x;
    int y;
    int *z;
    x = 3;
    y = 5;
    z = &y + 4;
    assert(3, *z);
}
int inner_test_pointer03() { char *p = user_input; }

int test_pointer() {
    inner_test_pointer01();
    inner_test_pointer02();
    inner_test_pointer03();
}

int test_func_def_func1(int a, int b) { return a + b; }
int test_func_def_func2(int a, int b, int c) { return a + c; }
int test_func_def() {
    assert(3, test_func_def_func1(1, 2));
    assert(4, test_func_def_func2(1, 2, 3));
}

int sum(int n) {
    if (n < 0) return 0;
    return n + sum(n - 1);
}

int test_func_def_recursive() {
    int a;
    a = 10;
    assert(55, sum(a));
}

int test_pointer_calc() {
    int *p;
    alloc4(&p, 1, 2, 4, 8);

    int *q;
    q = p + 2;
    assert(4, *q);

    q = p + 3;
    assert(8, *q);

    q = q - 2;
    assert(2, *q);
}

int test_sizeof() {
    int x;
    assert(4, sizeof(x));
    assert(4, sizeof x);

    int *y;
    assert(8, sizeof(y));
    assert(8, sizeof y);

    assert(8, sizeof(y + 3));
    assert(8, sizeof(y + 3));

    assert(4, sizeof(*y));

    assert(4, sizeof(1));
    assert(4, sizeof 1);

    assert(4, sizeof(int));
    assert(1, sizeof(char));

    // NOTE: it looks like standard C/C++ doesn't support sizeof operator without braces
    // when the right item is typename.
    assert(4, sizeof int);
    assert(1, sizeof char);

    struct SizeOfTest {
        int a;
        char b;
    } a;

    assert(8, sizeof(a));
    assert(8, sizeof(struct SizeOfTest));
    assert(12, sizeof(struct Hoge4 {
               int a;
               char b;
               int c;
           }));

    assert(4, sizeof(Int));
    assert(8, sizeof(String));

    assert(4, sizeof Int);
    assert(8, sizeof String);

    assert(8, sizeof Int *);
    assert(8, sizeof(Int *));

    assert(4, sizeof(enum Yay{Y_A, Y_B}));
    assert(4, sizeof enum Yay2{Y2_A, Y2_B});
}

int test_array() {
    int a[2];
    *a = 1;
    *(a + 1) = 2;
    int *p;
    p = a;
    assert(3, *p + *(p + 1));
}

int test_array_access() {
    int a[2];
    a[0] = 1;
    a[1] = 2;
    int *p;
    p = a;
    assert(3, p[0] + p[1]);

    int b[2][3];
    b[0][1] = 2;
    b[1][2] = 3;
    int **q;
    q = b;
    assert(5, q[0][1] + q[1][2]);
}

int test_global_variable() {
    g_a = 10;
    assert(10, g_a);
}

int test_char() {
    char x[3];
    x[0] = -1;
    x[1] = 2;
    int y;
    y = 4;
    assert(3, x[0] + y);
    assert(1, sizeof(x[0]));
}

int test_string() {
    char *a;
    a = "abcd";
    assert(97, a[0]);

    char *b = g_strings[0];
    assert(97, *(b + 0));
    assert(98, *(b + 1));
    assert(99, *(b + 2));
}

int test_gloval_variable_init() {
    assert(3, g_a_init3);

    assert(0, g_array[0]);
    assert(4, g_array[4]);

    assert(5, g_array2[0]);
    assert(12, g_array2[4]);

    assert(102, g_msg1[0]);
    assert(111, g_msg1[2]);

    assert(98, g_msg2[0]);
    assert(114, g_msg2[2]);
}

int test_local_variable_init() {
    int a = 10;
    assert(10, a);

    int b[3] = {1, 2, 7};
    assert(1, b[0]);
    assert(2, b[1]);
    assert(7, b[2]);

    int c[] = {1, 2};
    int d[5] = {5};
    int e[3] = {3, 4, 5};
    int e2[2] = {3, 4, 5};  // 初期化の数優先

    assert(1, c[0]);
    assert(2, c[1]);

    assert(5, d[0]);
    assert(0, d[1]);  // ここ
    assert(0, d[2]);  // ここ
    assert(0, d[3]);  // ここ
    assert(0, d[4]);  // ここ

    assert(3, e[0]);
    assert(5, e[2]);

    assert(5, e2[2]);

    char abc[10] = "abc";
    char def[] = "def";

    assert(97, abc[0]);
    assert(98, abc[1]);
    assert(99, abc[2]);

    assert(100, def[0]);
    assert(101, def[1]);
    assert(102, def[2]);

    // TODO: currently, local variable cannot use string initializer
    // this should be legal.
    // char *word = "hoge";
    // int len = strlen(word);
}

struct Hoge {
    int a;
    char b;
    int c;
};

// TODO: allow defining struct in function without variable decl
struct StTest2 {
    int a2;
    char b2;
    int c2;
};
int test_struct() {
    struct {
        int aaa;
        int bbb;
        int ccc;
    } abc;
    abc.aaa = 10;
    abc.bbb = 20;
    abc.ccc = 30;
    assert(10, abc.aaa);
    assert(20, abc.bbb);
    assert(30, abc.ccc);
    assert(30, abc.aaa + abc.bbb);

    struct {
        int a;
        char b;
        int c;
    } ccc;
    int size = &ccc.c - &ccc.a;
    assert(8, size);

    struct Hoge x;
    x.a = 3;
    assert(3, x.a);

    struct StTest {
        int a;
        char b;
        int c;
    } ccc2;
    int size2 = &ccc2.c - &ccc2.a;
    assert(8, size2);

    struct StTest ccc3;
    int size3 = &ccc3.c - &ccc3.a;
    assert(8, size3);

    ccc2.a = 7;
    struct StTest *ptr = &ccc2;
    assert(7, ptr->a);

    // TODO: fix initialization for struct
    // struct StTest2 st = {333, 'b', 321};
    // assert(123, st.a2);
    // assert(98, st.b2);
    // assert(321, st.c2);

    // array of struct
    assert(1, hoges[0].a);
    assert(2, hoges[1].a);
    assert(3, hoges[2].a);
    assert(97, hoges[0].b);
    assert(98, hoges[1].b);
    assert(99, hoges[2].b);
    assert(100, hoges[0].c);
    assert(200, hoges[1].c);
    assert(300, hoges[2].c);
}

int test_typedef() {
    // 初期化式がおかしい
    // String a = "hoge";
    String a;
    a = "hogehoge";
    Int b;
    b = 10;
    assert(10, b);
    assert(104, a[0]);
    assert(111, a[1]);
    assert(103, a[2]);
    assert(101, a[3]);

    StructHoge hoge;
    hoge.a = 10;
    hoge.b = 20;
    assert(10, hoge.a);
    assert(20, hoge.b);
}

int test_enum() {
    enum HogeEnum2 { AAA = 10, BBB, CCC } hogee;
    enum HogeEnum2 hogee2;
    hogee = AAA;
    assert(10, hogee);
    assert(11, BBB);
    assert(12, CCC);

    hogee2 = BBB;
    assert(11, hogee2);

    // enum HogeEnum3 { AAA, BBB } hogee3;
    enum HogeEnum3 { A, B } hogee3;
    hogee3 = A;
    assert(1, hogee3);

    // global + typedef
    assert(K_A, k);
}

int test_break() {
    int i = 0;
    for (;;) {
        i = i + 1;
        if (i == 3) {
            break;
        }
    }
    assert(3, i);

    i = 0;
    for (;;) {
        int j = 0;
        i = i + 1;
        while (i) {
            j = j + 1;
            if (j == 2) {
                break;
            }
        }
        assert(2, j);
        if (i == 3) {
            break;
        }
    }
    assert(3, i);
}

int test_continue() {
    int i = 0;
    int j = 0;
    while (i < 10) {
        i = i + 1;
        if (i > 5) {
            continue;
        }
        j = j + 1;
    }
    assert(10, i);
    assert(5, j);

    i = 0;
    j = 0;
    for (; i < 10; i = i + 1) {
        if (i > 5) {
            continue;
        }
        j = j + 1;
    }
    assert(10, i);
    assert(6, j);
}

int test_addeq() {
    int i = 2;
    i += 5;
    assert(7, i);

    i -= 3;
    assert(4, i);

    i *= 2;
    assert(8, i);

    i /= 2;
    assert(4, i);
}

int test_addeq_ptr() {
    int a[10] = {1, 2, 3, 4, 5};
    int *ptr = &a;
    assert(1, *ptr);
    ptr += 4;
    assert(5, *ptr);
    ptr -= 3;
    assert(2, *ptr);
}

int test_pp() {
    int a = 10;
    assert(11, ++a);
    assert(11, a);

    assert(10, --a);
    assert(10, a);

    assert(10, a++);
    assert(11, a);

    assert(11, a--);
    assert(10, a);

    assert(19, (a--) + (a++));
}

int test_bit() {
    // not
    assert(0, !1);
    assert(0, !2);
    assert(1, !0);

    // bit not
    assert(-1, ~0);
    assert(0, ~-1);

    // bit and
    assert(0, 0 & 1);
    assert(1, 3 & 1);
    assert(3, 7 & 3);
    assert(10, -1 & 10);

    // bit or
    assert(0, 0 | 0);
    assert(1, 0 | 1);
    assert(1, 1 | 1);

    // bit xor
    assert(0, 0 ^ 0);
    assert(1, 1 ^ 0);
    assert(0, 1 ^ 1);

    assert(3, (2 - 2) & 5 | 3);
    assert(0, (2 - 2) & (5 | 3));  // 0000, 0101, 0011
}

int test_and_or() {
    assert(1, 0 || 1);
    assert(1, 0 || (2 - 2) || 5);
    assert(0, 0 || 0);
    assert(0, 0 || (2 - 2));

    assert(0, 0 && 1);
    assert(0, (2 - 2) && 5);
    assert(1, 1 && 5);
    assert(1, 1 && 5 && 100);

    assert(1, (2 - 2) && 5 || 3);
    assert(0, (2 - 2) && (5 || 3));  // 0000, 0101, 0011
}

int test_ternary() {
    assert(2, 0 ? 1 : 2);
    assert(1, 1 ? 1 : 2);

    int flag = 0;
    int result = flag ? 1 : 100;
    assert(100, result);
}

int test_switch() {
    int i = 0;
    switch (0) {
        case 0:
            i = 5;
            break;
        case 1:
            i = 6;
            break;
        case 2:
            i = 7;
            break;
    }
    assert(5, i);

    switch (5) {
        case 1:
        case 2:
            break;
        default:
            i = 10;
    }
    assert(10, i);

    // TODO: currently, switch doesn't support int as expr/label
    // enum SwitchTest { ST_A, ST_B } st;
    // st = ST_A;

    // switch (st) {
    //     case ST_A:
    //         i = 100;
    //         break;
    //     case ST_B:
    //         i = 200;
    //         break;
    //     default:
    //         break;
    // }
    // assert(i, 100);

    // st = ST_B;

    // switch (st) {
    //     case ST_A:
    //         i = 100;
    //         break;
    //     case ST_B:
    //         i = 200;
    //         break;
    //     default:
    //         break;
    // }
    // assert(i, 200);
}

void test_void() {
    // it's ok if compile goes well
    assert(1, 1);
}

void test_bool() {
    bool a = true;
    assert(1, a);
    bool b = false;
    assert(0, b);
    assert(true, (true || false));
}

void test_null() {
    int a = NULL;
    int *b = NULL;
    bool c = NULL;
}

void test_nest_types() {
    Nest nestX;
    Nest *nestY;
    nestX.a = 10;
    nestY = &nestX;
    assert(10, nestY->a);

    Nest nestZ;
    nestZ.a = 20;
    nestX.next = &nestZ;
    assert(20, nestY->next->a);

    Nest nestW;
    nestW.a = 30;
    nestZ.next = &nestW;
    assert(30, nestY->next->next->a);

    Nest2 n1;
    n1.b = 123;
    assert(123, n1.b);
    Nest2 n2;
    n2.b = 321;
    n1.next = &n2;
    assert(321, n1.next->b);
}

void test_char_literal() {
    assert(97, 'a');
    assert(10, '\n');
}

void test_hack() {
    // it's allowed to define the same variable twice.
    {
        int a = 10;
        assert(10, a);
    }
    {
        int a = 20;
        assert(20, a);
    }

    for (int b = 0; b < 10; b++) {
    }
    assert(10, b);  // b is readable here since baricc doesn't have scope

    struct {
        int a;
    } c[10];
    c[0].a = 10;
    assert(10, c[0].a);

    struct {
        int a;
    } * d[2];
    struct {
        int a;
    } e;
    e.a = 20;
    d[0] = &e;
    assert(20, d[0]->a);

    struct {
        int a;
    } f[2][2][2];
    f[0][1][1].a = 30;
    f[1][0][1].a = 40;
    assert(30, f[0][1][1].a);
    assert(40, f[1][0][1].a);
}

int main() {
    test_calc();
    test_compare();
    test_variable();
    test_return();
    test_if();
    test_while();
    test_for();
    test_multi_control_syntax();
    test_block();
    test_func();
    test_pointer();
    test_func_def();
    test_func_def_recursive();
    test_pointer_calc();
    test_sizeof();
    test_array();
    test_global_variable();
    test_struct();
    test_array_access();
    test_char();
    test_string();
    test_gloval_variable_init();
    test_local_variable_init();
    test_typedef();
    test_enum();
    test_break();
    test_continue();
    test_addeq();
    test_addeq_ptr();
    test_pp();
    test_bit();
    test_and_or();
    test_ternary();
    test_switch();
    test_void();
    test_nest_types();
    test_char_literal();
    test_bool();

    test_hack();

    printf("OK\n");
    return 0;
}
