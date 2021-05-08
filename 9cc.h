#include <ctype.h>
#include <errno.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct Node Node;
typedef struct Token Token;
typedef struct Type Type;
typedef struct Member Member;
typedef struct LVar LVar;
typedef struct Tag Tag;
typedef struct StringToken StringToken;
typedef struct Define Define;
typedef struct EnumVar EnumVar;

typedef enum {
    TK_RESERVED,  // any single character symbol
    TK_NUM,       // primray integer
    TK_EOF,       // 入力の終わりを表すトークン
    TK_IDENT,     // identification of variable, function
    TK_RETURN,
    TK_IF,
    TK_ELSE,
    TK_WHILE,
    TK_FOR,
    TK_TYPE,  // type annotation
    TK_SIZEOF,
    TK_STRING,
    TK_STRUCT,
    TK_TYPEDEF,
    TK_ENUM,
} TokenKind;

struct Token {
    TokenKind kind;  // type of the token
    Token* next;     // next token. we use linkedlist instead of array.
    int val;         // actual value when kind == TK_NUM
    char* str;       // pointer of where the token starts in the given program.
    int len;  // length of the token. with len and str, we can get the token label.
};

/*
Member: definition of members of a struct.
*/
struct Member {
    Member* next;  // next member definition. we use linkedlist instaed of array
    Type* ty;      // Type of the member
    char* name;    // the member's name
    int offset;  // offset of the member from the starting point of base variable.
                 // actually, offset = sum of sizes of previous members
};

// 型名へのalias. Structのtagも typedef int INTのaliasも同様のもの
// TODO: つまり typedef struct Hoge Hoge; は無意味?
struct Tag {
    Tag* next;
    char* name;
    Type* type;  //
};

// 型情報. ptr/arrayはその先の型情報も必要なので、それをptr_toとして持つ
// TODO ptr_toをofとかにrenameしたい
// TODO: char* hoge[] のメモリ配置.(stringの場合はdataにおかれるからそこのアドレスの配列)
// NOTE: string => ARRAY of CHAR ≒ PTR of CHAR
typedef enum { INT, CHAR, PTR, ARRAY, STRUCT } TypeKind;
struct Type {
    TypeKind ty;
    struct Type*
        ptr_to;  // used when ty == PTR, ARRAY. 指し示す先の変数の型を持つ
    size_t array_size;
    Member* members;
    int size;
};

// local variables(LinkedList)
struct LVar {
    LVar* next;
    char* name;
    int len;  // length of name
    int offset;  // 関数ごとの初期RSPまたはglobalの起点からのoffset.
                 // 変数が増えるにつれて値は大きくなる.
    // つまりstackの上に進む(stackの先頭からは遠ざかる)
    Type* type;
    enum { LOCAL, GLOBAL } kind;
    Node* init;  // 初期化式
};

LVar* find_variable(Token* tok);
Node* find_enum_var(Token* tok);
// stringでありながらかつそのmap的なもの
struct StringToken {
    char* value;
    int index;
    StringToken* next;
};

// read_define用
struct Define {
    Token* ident;
    Type* type;
};

Define* read_define();
bool consume(char* op);
Token* consume_kind(TokenKind kind);
bool check(char* op);
bool check_kind(TokenKind kind);
void expect(char* op);
int expect_number();
void advance_token();
bool at_eof();
Token* new_token(TokenKind kind, Token* cur, char* str, int len);
bool startswith(char* p, char* q);
Token* tokenize();
void register_lval(Token* tok, Type* type);

// codegen
// 抽象構文木のノードの種類
typedef enum {
    ND_ADD,
    ND_SUB,
    ND_MUL,
    ND_DIV,
    ND_NUM,
    ND_EQ,
    ND_NE,
    ND_LT,
    ND_LE,
    ND_ASSIGN,

    ND_LVAR,      // ローカル変数
    ND_GVAR_DEF,  // グローバル変数の定義
    ND_GVAR,      // グローバル変数の利用
    ND_RETURN,
    ND_IF,
    ND_ELSE,
    ND_WHILE,
    ND_FOR,
    ND_FOR_LEFT,
    ND_FOR_RIGHT,

    ND_BLOCK,
    ND_FUNC_CALL,
    ND_FUNC_DEF,
    ND_ADDR,
    ND_DEREF,
    ND_STRING,
    ND_MEMBER,  // a.b のdot or a->b のarrow. ND_MEMBER_ACCESSのほうがいいな。
} NodeKind;

struct Node {
    NodeKind kind;
    Node* lhs;
    Node* rhs;
    Node** block;         // used when kind == ND_BLOCK
    int val;              // used when kind == ND_NUM
    int offset;           // used when kind == ND_LVAR
    char* funcname;       // used when kind == ND_FUNC_CALL, or ND_FUNC_DEF
    Node** args;          // used when kind == ND_FUNC_DEF
    Type* type;           // used when kind == ND_LVAR
    char* varname;        // used when kind == ND_GVAR, ND_LVAR
    int varsize;          // used when kind == ND_GVAR, ND_LVAR Byte.
    StringToken* string;  // used when kind == ND_STRING
    LVar* var;            // used when kind == ND_LVAR, ND_GVAR_DEF
    Member* member;       // used when kind == ND_MEMBER
};

Node* new_node(NodeKind kind);
Node* new_binary(NodeKind kind, Node* lhs, Node* rhs);
Node* new_num(int val);

// LinkedList<Token>から Nodeを構築する
void program();
Node* stmt();
Node* block();
Node* func_def(Define* def);
Node* expr();
Node* assign();
Node* expr();
Node* equality();
Node* relational();
Node* add();
Node* mul();
Node* unary();
Node* primary();
Node* define_variable(Define* def, LVar** varlist);
Node* variable(Token* tok);
Node* local_variable_init(Node* node);
Type* get_type(Node* node);
int get_type_size(Type* type);
Define* read_define_head();
void read_define_suffix(Define* def);
Type* type_annotation();
Type* define_struct();
Member* find_member(Token* tok, Type* type);
void push_tag(char* name, Type* type);
Tag* find_tag(Token* tok);
Node* struct_ref(Node* node);
bool define_typedef();
Type* define_enum();
Type* int_type();
// 構文木からアセンブラを作るところまで一気に進める
void gen(Node* node);
void gen_val(Node* node);

struct EnumVar {
    EnumVar* next;
    char* name;
    int value;
};

// util
void print_token(Token* token);
void error_at(char* loc, char* fmt, ...);
void error(char* fmt, ...);

void print_type(Type* type);
void print_node(Node* node);

char* read_file(char* path);

// global variables
extern Token* token;
extern char* user_input;
extern char* filename;
extern Node* code[100];
// TODO: localsはメモリにはどうマッピングされるんだっけ. offsetの計算するだけ?
extern LVar* locals[100];
extern int cur_scope_depth;
extern LVar* globals[100];
extern StringToken* strings;
extern Tag* tags;
extern EnumVar* enum_vars;
