#include "baricc.h"

Token *token;
char *user_input;
char *filename;

// read current token, and check if it's expected content
// if it's as expected, go on to the next token and return true
// otherwise return false.
bool consume(char *op) {
    if (!check(op)) {
        return false;
    }
    advance_token();
    return true;
}

// read current token, and check if it's expected kind.
// if it's as expected, go on to the next token and return the token
// otherwise return NULL.
Token *consume_kind(TokenKind kind) {
    if (!check_kind(kind)) {
        return NULL;
    }
    Token *tok = token;
    advance_token();
    return tok;
}

// read current token, and check if it's expected content
// if it's as expected, just return true without moving to next one
bool check(char *op) {
    return (token->kind == TK_RESERVED) && (strlen(op) == token->len) &&
           (memcmp(token->str, op, token->len) == 0);
}

// read current token, and check if it's expected kind
// if it's as expected, just return true without moving to next one
bool check_kind(TokenKind kind) { return token->kind == kind; }

// read current token, and check if it's expected content
// if it's as expected, go on to the next token and return
// otherwise throw error.
void expect(char *op) {
    if (!check(op)) {
        char *tmp[100] = {0};
        memcpy(tmp, token->str, token->len);
        error_at2(token->str, "expected: '%c'\nactual: '%s'\n", *op, tmp);
    }
    advance_token();
    return;
}

// read current token, and check if it's expected kind
// if it's as expected, go on to the next token and return
// otherwise throw error.
Token *expect_kind(TokenKind kind) {
    if (!check_kind(kind)) {
        error_at2(token->str, "unexpected token: '%s'\nactual: '%s'\n",
                  get_token_kind_name(kind), get_token_kind_name(token->kind));
    }
    Token *tok = token;
    advance_token();
    return tok;
}

// expect function dedicated for TK_NUM
int expect_number() {
    if (token->kind != TK_NUM) {
        print_token(token);
        error_at0(token->str, "数ではありません\n");
    }
    int val = token->val;
    advance_token();
    return val;
}

// step forward by 1 token
void advance_token() {
    // for debugging
    // print_token(token);

    token = token->next;
    return;
}

bool at_eof() { return token->kind == TK_EOF; }

// build token object.
// token's content is available by utilizing tok->str `and` tok->len.
Token *new_token(TokenKind kind, Token *cur, char *str, int len) {
    // calloc get memories as requested and clear them with zero(malloc doesn't
    // do zero clearance)
    Token *tok = calloc(1, sizeof(Token));
    tok->kind = kind;
    tok->str = str;
    tok->len = len;
    cur->next = tok;
    return tok;
}

bool startswith(char *p, char *q) { return memcmp(p, q, strlen(q)) == 0; }

bool is_alnum(char p) {
    return ('a' <= p && p <= 'z') || ('A' <= p && p <= 'Z') ||
           ('0' <= p && p <= '9') || (p == '_');
}

typedef struct ReservedWord {
    char *word;
    TokenKind kind;
} ReservedWord;

ReservedWord reserved_words[] = {
    {"return", TK_RETURN},
    {"if", TK_IF},
    {"else", TK_ELSE},
    {"while", TK_WHILE},
    {"for", TK_FOR},
    {"int", TK_TYPE},
    {"void", TK_TYPE},
    {"char", TK_TYPE},
    {"bool", TK_TYPE},
    {"size_t", TK_TYPE},
    {"FILE", TK_TYPE},
    {"sizeof", TK_SIZEOF},
    {"struct", TK_STRUCT},
    {"typedef", TK_TYPEDEF},
    {"enum", TK_ENUM},
    {"break", TK_BREAK},
    {"continue", TK_CONTINUE},
    {"switch", TK_SWITCH},
    {"case", TK_CASE},
    {"false", TK_FALSE},
    {"true", TK_TRUE},
    {"NULL", TK_NULL},
    {"SEEK_END", TK_SEEKEND},
    {"SEEK_SET", TK_SEEKSET},
    {"SEEK_CUR", TK_SEEKCUR},
    {"default", TK_DEFAULT},
    {"errno", TK_ERRNO},
    {"stderr", TK_STDERR},
    {"", TK_EOF},
};

/*
tokenize does tokenize from given program(char*), which is called user_input
note: using blank object as head of linkedlist is said to be one common way..
*/
Token *tokenize() {
    char *p = user_input;
    Token head;
    head.next = NULL;
    head.len = 0;
    head.str = NULL;
    Token *cur = &head;

    while (*p) {
        // print_token(cur);

        // skip blanks
        if (isspace(*p)) {
            p++;
            continue;
        }

        // skip block comments
        if (startswith(p, "/*")) {
            char *q = strstr(p + 2, "*/");
            if (!q) {
                error_at0(p, "block comment is not closed.\n");
            }
            p = q + 2;
            continue;
        }

        // skip line comments
        if (startswith(p, "//")) {
            while (!startswith(p, "\n")) {
                p++;
            }
            continue;
        }

        // skip #include
        // TODO: skip all preprocessors/macro
        // TODO: imple preprocessor
        if (startswith(p, "#include")) {
            while (!startswith(p, "\n")) {
                p++;
            }
            continue;
        }

        // skip extern
        // TODO: impl extern
        if (startswith(p, "extern")) {
            while (!startswith(p, "\n")) {
                p++;
            }
            continue;
        }

        // try to parse reserved words before ident
        bool did_break = false;
        for (int i = 0; reserved_words[i].kind != TK_EOF; i++) {
            char *word = reserved_words[i].word;
            int len = strlen(word);
            TokenKind kind = reserved_words[i].kind;

            if (startswith(p, word) && !is_alnum(p[len])) {
                cur = new_token(kind, cur, p, len);
                p += len;
                did_break = true;
                break;
            }
        }
        if (did_break) {
            continue;
        }

        if (startswith(p, "==") || startswith(p, "!=") || startswith(p, "<=") ||
            startswith(p, ">=") || startswith(p, "->") || startswith(p, "+=") ||
            startswith(p, "-=") || startswith(p, "*=") || startswith(p, "/=") ||
            startswith(p, "++") || startswith(p, "--") || startswith(p, "&&") ||
            startswith(p, "||")) {
            cur = new_token(TK_RESERVED, cur, p, 2);
            p += 2;
            continue;
        }

        if (strchr(".+-*/()<>;={},&[]!~|^?:", *p)) {
            cur = new_token(TK_RESERVED, cur, p, 1);
            p++;
            continue;
        }

        // char literal
        if (*p == '\'') {
            cur = read_char_literal(cur, p);
            p += cur->len;
            continue;
        }

        // string literal
        if (*p == '"') {
            p++;
            char *c = p;
            while (true) {
                if (startswith(c, "\\")) {
                    c += 2;
                    continue;
                }
                if (*c == '"') {
                    break;
                }
                c++;
            }
            int len = c - p;
            cur = new_token(TK_STRING, cur, p, len);
            p = c;
            p += 1;
            continue;
        }

        // a token which is composed of alphabets + some kinds of symbols are
        // ident(variable name, tag(type) name)
        if (('a' <= *p && *p <= 'z') || ('A' <= *p && *p <= 'Z')) {
            char *start = p;
            while (is_alnum(*p)) {
                p++;
            }
            cur = new_token(TK_IDENT, cur, start, (p - start));
            continue;
        }

        // int literal
        if (isdigit(*p)) {
            cur = new_token(TK_NUM, cur, p, 0);
            char *q = p;
            // move as many as length of the digit
            cur->val = strtol(p, &p, 10);
            cur->len = p - q;
            continue;
        }

        error_at0("failed to tokenize. %s\n", token->str);
    }

    // print_token(cur);
    new_token(TK_EOF, cur, p, 0);
    return head.next;
}

// TODO: read here in detail
//   'a'
//   ^start here
Token *read_char_literal(Token *cur, char *start) {
    char *p = start + 1;
    if (*p == '\0') {
        error_at0(start, "unclosed char literal");
    }

    char c;
    if (*p == '\\') {
        // when escaping char literal
        p++;
        c = get_escape_char(*p);
        p++;
    } else {
        c = *p;
        p++;
    }

    // when ptr reaches here, it must be the closing single quote.
    if (*p != '\'') {
        error_at0(start, "char literal must be one length");
    }
    p++;

    Token *tok = new_token(TK_NUM, cur, start, p - start);
    tok->val = c;

    return tok;
}

char get_escape_char(char c) {
    switch (c) {
        case 'a':
            return '\a';
        case 'b':
            return '\b';
        case 't':
            return '\t';
        case 'n':
            return '\n';
        case 'v':
            return '\v';
        case 'f':
            return '\f';
        case 'r':
            return '\r';
        case 'e':
            return '\e';
        case '0':
            return '\0';
        default:
            return c;
    }
}