#include <ctype.h>
#include <errno.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// tokenize
// tokenの種類
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
} TokenKind;

typedef struct Node Node;
typedef struct Token Token;
typedef struct Type Type;
typedef struct Member Member;

struct Token {
    TokenKind kind;  // トークンの種別
    Token* next;     // 次の入力トークン
    int val;         // TK_NUMの場合の値
    char* str;       // トークン文字列
    int len;  // トークンの長さ(lenを追加するまでは1文字の前提だった)
};

struct Member {
    Member* next;
    Type* ty;
    char* name;
    int offset;
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
};

// local variables(LinkedList)
typedef struct LVar LVar;
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

// stringでありながらかつそのmap的なもの
typedef struct StringToken StringToken;
struct StringToken {
    char* value;
    int index;
    StringToken* next;
};

// read_define用
typedef struct Define Define;
struct Define {
    Token* ident;
    Type* type;
};

Define* read_define();
bool consume(char* op);
Token* consume_kind(TokenKind kind);
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

// 構文木からアセンブラを作るところまで一気に進める
void gen(Node* node);
void gen_val(Node* node);

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