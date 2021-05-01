#include <stdio.h>
#include <stdlib.h>

#include <ctype.h>
#include <stdarg.h>
#include <stdbool.h>
#include <string.h>

// tokenize
// tokenの種類
typedef enum {
    TK_RESERVED, // 記号
    TK_NUM,      // 整数トークン
    TK_EOF       // 入力の終わりを表すトークン
} TokenKind;

typedef struct Token Token;
struct Token {
    TokenKind kind; // トークンの種別
    Token *next;    // 次の入力トークン
    int val;        // TK_NUMの場合の値
    char *str;      // トークン文字列
    int len;        // トークンの長さ(lenを追加するまでは1文字の前提だった)
};

bool consume(char* op);
void expect(char* op);
int expect_number();
bool at_eof();
Token *new_token(TokenKind kind, Token *cur, char *str, int len);
bool startswith(char* p, char* q);
Token* tokenize();


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
    ND_LE
} NodeKind;

typedef struct Node Node;

struct Node {
    NodeKind kind;
    Node *lhs;
    Node *rhs;
    int val;   // kind == ND_NUMの場合のみ使う
};

Node* new_node(NodeKind kind);

Node* new_binary(NodeKind kind, Node* lhs, Node* rhs);
Node* new_num(int val);
Node* expr();
Node* equality();
Node* relational();
Node* add();
Node* mul();
Node* unary();
Node* primary();
// 構文木からアセンブラを作るところまで一気に進める
void gen(Node* node);


// util
void print_token(Token* token);
void error_at(char* loc, char* fmt, ...) ;

// global variables
extern Token* token;
extern char* user_input;
