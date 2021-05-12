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
    TK_EOF,       // EOF token
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
    TK_BREAK,
    TK_CONTINUE,
    TK_SWITCH,
    TK_CASE,
    TK_DEFAULT,
    TK_TRUE,
    TK_FALSE,
    TK_NULL,
    TK_SEEKSET,
    TK_SEEKCUR,
    TK_SEEKEND,
    TK_ERRNO,
    TK_STDERR,
} TokenKind;

/*
Token is the smallest meaningful unit of characters in given program.
It doesn't have semantics itself, but only when kind is TK_NUM, it can have
value of the number
*/
struct Token {
    TokenKind kind;  // type of the token
    Token* next;     // next token. we use linkedlist instead of array.
    int val;         // actual value when kind == TK_NUM
    char* str;       // pointer of where the token starts in the given program.
    int len;  // length of the token. with len and str, we can get the token
              // label.
};

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

    ND_LVAR,      // local variable
    ND_GVAR_DEF,  // global variable
    ND_GVAR,      // to use global variable
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
    ND_MEMBER,  // TODO: better to name ND_MEMBER_ACCESS
    ND_BREAK,
    ND_CONTINUE,
    ND_PRE_INC,  // ++a

    ND_PRE_DEC,  // --a
    ND_SUF_INC,  // a++
    ND_SUF_DEC,  // a--
    ND_NOT,      // !a
    ND_BITNOT,   // ~a
    ND_BITOR,    // |
    ND_BITXOR,   // ^
    ND_BITAND,   // &
    ND_LOGOR,    // ||
    ND_LOGAND,   // &&

    ND_TERNARY,
    ND_SWITCH,
    ND_CASE,
    ND_PADDING
} NodeKind;

/*
Node is a container to show structure of program after parse.

TODO:
Currently this Node struct has too many members which is for specific usecases.
we should have more specialized Node (e.g. VarNode, FuncNode, etc..) to make
code cleaner.
*/
struct Node {
    NodeKind kind;
    Node* lhs;  // Node has at most two children. lhs and rhs.
    Node* rhs;
    Node** block;  // used when kind == ND_BLOCK. To contains stmts in block or
    // items in initializer(this should be moved to another field)
    int val;         // used when kind == ND_NUM
    int offset;      // used when kind == ND_LVAR
    char* funcname;  // used when kind == ND_FUNC_CALL, or ND_FUNC_DEF
    Node** args;     // used when kind == ND_FUNC_DEF
    Type* type;      // used when kind == ND_LVAR
    char* varname;   // used when kind == ND_GVAR, ND_LVAR
    int varsize;  // used when kind == ND_GVAR, ND_LVAR Byte. TODO: varsize and
                  // offset can be unified.
    StringToken* string;  // used when kind == ND_STRING
    LVar* var;            // used when kind == ND_LVAR, ND_GVAR_DEF
    Member* member;       // used when kind == ND_MEMBER
    Node* next_case;  // used when kind == ND_CASE. TODO: this should moved out
                      // to like SwitchNode
    Node* default_case;  // used when kind == ND_DEFAULT TODO: this should moved
                         // out to like SwitchNode
    int case_label;  // used when kind == ND_SWITCH TODO: this should moved out
                     // to like SwitchNode
    int size;        // used when kind == ND_PADDING
};

/*
Type contains information of type of variables.

TODO:
- rename ptr_to as "of" because array also uses ptr_to now.
*/
typedef enum { INT, CHAR, PTR, ARRAY, STRUCT } TypeKind;
struct Type {
    TypeKind ty;
    struct Type*
        ptr_to;  // used when ty == PTR, ARRAY. 指し示す先の変数の型を持つ
    size_t array_size;
    Member* members;
    int size;
    bool incomplete;
};

/*
LVar represents variable.
baricc stores variables as linkedlist for global and each function
TODO: this is used for global variables as well, so it should be renamed as
VAR..
*/
struct LVar {
    LVar* next;
    char* name;
    int len;     // length of name
    int offset;  // offset from rbp
    Type* type;
    enum { LOCAL, GLOBAL } kind;
    Node* init;  // initializer
};

LVar* find_variable(Token* tok);
Node* find_enum_var(Token* tok);

/*
StringToken is container for string.
baricc stores all strings it encounters as linedlist and generate in assebmly at
last.
*/
struct StringToken {
    char* value;  // string value
    int index;    // the string's index in all strings baricc finds in the given
                  // program
    StringToken* next;
};

/*
Tag is alias to type name. struct's tag is also tag.
Type itself doesn't have name.
*/
struct Tag {
    Tag* next;
    char* name;
    Type* type;
};

/*
Member is definition of members of a struct.
ex:
struct Example {
    int a;  --> Member{next: b's member struct, ty: int, name: "a", offset: size
of int(=4) } char* b;  --> Member{next: NULL, ty: ptr of char, name: "b",
offset: size of ptr of char(=8) }
}
*/
struct Member {
    Member* next;  // next member definition. we use linkedlist instaed of array
    Type* ty;      // Type of the member
    char* name;    // the member's name
    int offset;    // offset of the member from the starting point of base
                   // variable. actually, offset = sum of sizes of previous
                   // members
};

/*
Define is a container to deliver type annotation of return value or some
variables.
*/
struct Define {
    Token* ident;
    Type* type;
};

/*
EnumVar is a container of enum members baricc finds.
baricc stores all enum members as linkedlist and replace them as int at compile
time.
*/
struct EnumVar {
    EnumVar* next;
    char* name;
    int value;
};

// tokenize the given program
bool consume(char* op);
Token* consume_kind(TokenKind kind);
bool check(char* op);
bool check_kind(TokenKind kind);
void expect(char* op);
Token* expect_kind(TokenKind kind);
int expect_number();
void advance_token();
bool at_eof();
Token* new_token(TokenKind kind, Token* cur, char* str, int len);
Token* tokenize();

// parse program and convert it into node tree from tokens.
Node* new_node(NodeKind kind);
Node* new_binary(NodeKind kind, Node* lhs, Node* rhs);
Node* new_num(int val);
void program();
Node* stmt();
Node* block();
Node* func_def(Define* def);
Node* define_arg();
Node* expr();
Node* assign();
Node* expr();
Node* equality();
Node* relational();
Node* add();
Node* mul();
Node* unary();
Node* primary();
Node* conditional();
Node* logor();
Node* logand();
Node* bitor ();
Node* bitxor();
Node*bitand();
Node* define_variable(Define* def, LVar** varlist);
Node* variable(Token* tok);
Node* local_variable_init(Node* node);
Define* read_define();
Define* read_define_head();
void read_define_suffix(Define* def);
Type* type_annotation();
Type* define_struct();
Member* find_member(Token* tok, Type* type);
void push_tag(Token* tok, Type* type, bool is_complete);
Tag* find_tag(Token* tok);
Tag* find_or_register_tag(Token* tok);
Node* struct_ref(Node* node);
bool define_typedef();
Type* define_enum();
Type* int_type();
Node* ptr_conversion(Node* node, Node* right);
Node* initializer(Type* type);
void initializer_helper(Type* type, Node* init, int* i);
Node* convert_predefined_keyword_to_num();
Define* read_define();
void register_lval(Token* tok, Type* type);

Type* get_type(Node* node);
int get_type_size(Type* type);

// generate codes fron nodes
void gen(Node* node);
void gen_val(Node* node);

// util
// TODO: support rest parameter..
// void error_at(char* loc, char* fmt, ...);
void error_at0(char* loc, char* fmt);
void error_at1(char* loc, char* fmt, char* val);
void error_at2(char* loc, char* fmt, char* val1, char* val2);
void error0(char* fmt);
void error1(char* fmt, char* val);
void error2(char* fmt, char* val1, char* val2);
void print_token(Token* token);
void print_type(Type* type);
void print_node(Node* node);
bool startswith(char* p, char* q);
char* read_file(char* path);
Token* read_char_literal(Token* cur, char* start);
char get_escape_char(char c);
char* get_token_kind_name(TokenKind kind);

// global variables
extern Token* token;
extern char* user_input;
extern char* filename;
extern Node* code[1000];
extern LVar* locals[100];
extern int cur_scope_depth;
extern LVar* globals[100];
extern StringToken* strings;
extern Tag* tags;
extern EnumVar* enum_vars;
extern int if_sequence;
extern int break_sequence;
extern int continue_sequence;
