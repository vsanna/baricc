#include <ctype.h>
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
} TokenKind;

typedef struct Token Token;
struct Token {
    TokenKind kind;  // トークンの種別
    Token* next;     // 次の入力トークン
    int val;         // TK_NUMの場合の値
    char* str;       // トークン文字列
    int len;  // トークンの長さ(lenを追加するまでは1文字の前提だった)
};

// 型情報. ptr/arrayはその先の型情報も必要なので、それをptr_toとして持つ
typedef struct Type {
    enum { INT, PTR, ARRAY } ty;
    struct Type*
        ptr_to;  // used when ty == PTR, ARRAY. 指し示す先の変数の型を持つ
    size_t array_size;
} Type;

// local variables(LinkedList)
typedef struct LVar LVar;
struct LVar {
    LVar* next;
    char* name;
    int len;  // length of name
    int offset;
    Type* type;
};

LVar* find_lvar(Token* tok);

bool consume(char* op);
Token* consume_kind(TokenKind kind);
void expect(char* op);
int expect_number();
void advance_token();

void print_token(Token* token);
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

    ND_LVAR,  // ローカル変数
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
} NodeKind;

typedef struct Node Node;

struct Node {
    NodeKind kind;
    Node* lhs;
    Node* rhs;
    Node** block;    // used when kind == ND_BLOCK
    int val;         // used when kind == ND_NUM
    int offset;      // used when kind == ND_LVAR
    char* funcname;  // used when kind == ND_FUNC_CALL, or ND_FUNC_DEF
    Node** args;     // used when kind == ND_FUNC_DEF
    Type* type;      // used when kind == ND_LVAR;
};

Node* new_node(NodeKind kind);

Node* new_binary(NodeKind kind, Node* lhs, Node* rhs);
Node* new_num(int val);

// LinkedList<Token>から Nodeを構築する
void program();
Node* stmt();
Node* block();
Node* func_def();
Node* expr();
Node* assign();
Node* expr();
Node* equality();
Node* relational();
Node* add();
Node* mul();
Node* unary();
Node* primary();
Node* define_variable();
Node* variable(Token* tok);

// 構文木からアセンブラを作るところまで一気に進める
void gen(Node* node);
void gen_lval(Node* node);

// util
void print_token(Token* token);
void error_at(char* loc, char* fmt, ...);
void error(char* fmt, ...);

// global variables
extern Token* token;
extern char* user_input;
extern Node* code[100];
extern LVar* locals[100];