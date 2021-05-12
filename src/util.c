#include "baricc.h"

char *read_file(char *path) {
    FILE *fp = fopen(path, "r");
    if (!fp) {
        error2("cannot open %s: %s", path, strerror(errno));
    }

    // check filesize
    if (fseek(fp, 0, SEEK_END) == -1) {
        error2("%s: fseek: %s", path, strerror(errno));
    }
    size_t size = ftell(fp);
    if (fseek(fp, 0, SEEK_SET) == -1) {
        error2("%s: fseek: %s", path, strerror(errno));
    }

    // read file
    char *buf = calloc(1, size + 2);
    fread(buf, size, 1, fp);

    // if the file doesn't have line break at the end of it, assert one. this is
    // for making EOF ops easier
    if (size == 0 || buf[size - 1] != '\n') {
        buf[size++] = '\n';
    }

    buf[size] = '\n';
    fclose(fp);
    return buf;
}

// for debugging
// TODO(critical): Now stderr is not available.. so when we do self-copmile, we
// cannot use fprintf at all.
void print_token(Token *tok) {
    if (tok == NULL) {
        fprintf(stderr, "[DEBUG] token is null\n");
    } else {
        char name[100] = {0};
        memcpy(name, tok->str, tok->len);
        fprintf(stderr, "[DEBUG] token: %2d %s\n", tok->kind, name);
    }
}

void print_type(Type *type) {
    if (type == NULL) {
        fprintf(stderr, "[DEBUG] type is null");
    } else {
        char *name;
        switch (type->ty) {
            case INT:
                name = "INT";
                break;
            case CHAR:
                name = "CHAR";
                break;
            case PTR:
                name = "PTR";
                break;
            case ARRAY:
                name = "ARRAY";
                break;
            case STRUCT:
                name = "STRUCT";
            default:
                break;
        }
        fprintf(stderr, "[DEBUG] type = %s ", name);
    }

    if (type && (type->ty == ARRAY || type->ty == PTR)) {
        return;
    }

    fprintf(stderr, "\n");
}

void print_node(Node *node) {
    if (node == NULL) {
        fprintf(stderr, "[DEBUG] node is null\n");
    } else {
        if (node->funcname) {
            fprintf(stderr, "[DEBUG] node->funcname = %s\n", node->funcname);
        }
        if (node->varname) {
            fprintf(stderr, "[DEBUG] node->varname = %s\n", node->varname);
        }
        if (node->varsize) {
            fprintf(stderr, "[DEBUG] node->varsize = %d\n", node->varsize);
        }
        if (node->kind) {
            fprintf(stderr, "[DEBUG] node->kind = %d\n", node->kind);
        }
    }
}

void error0(char *fmt) {
    fprintf(stderr, fmt);
    fprintf(stderr, "\n");
    exit(1);
}

void error1(char *fmt, char *val) {
    fprintf(stderr, fmt, val);
    fprintf(stderr, "\n");
    exit(1);
}

void error2(char *fmt, char *val1, char *val2) {
    fprintf(stderr, fmt, val1, val2);
    fprintf(stderr, "\n");
    exit(1);
}

void error_at0(char *loc, char *fmt) {
    // get the line where loc exists.
    // line is : head pos of the line
    // end is  : tail pos of the line
    char *line = loc;
    while (user_input < line && line[-1] != '\n') line--;

    char *end = loc;
    while (*end != '\n') end++;

    // find which line num the line is.
    int line_num = 1;
    char *p;
    for (p = user_input; p < line; p++)
        if (*p == '\n') line_num++;

    // print the line with line number and filename
    int indent = fprintf(stderr, "%s:%d: ", filename, line_num);
    fprintf(stderr, "%.*s\n", (end - line), line);

    // point where error is happening with "^"
    int pos = loc - line + indent;
    fprintf(stderr, "%*s", pos, "");
    fprintf(stderr, fmt);
    exit(1);
}

void error_at1(char *loc, char *fmt, char *val) {
    char *line = loc;
    while (user_input < line && line[-1] != '\n') line--;

    char *end = loc;
    while (*end != '\n') end++;

    int line_num = 1;
    for (char *p = user_input; p < line; p++)
        if (*p == '\n') line_num++;

    int indent = fprintf(stderr, "%s:%d: ", filename, line_num);
    fprintf(stderr, "%.*s\n", (end - line), line);

    int pos = loc - line + indent;
    fprintf(stderr, "%*s", pos, "");  // pos個の空白を出力
    fprintf(stderr, fmt, val);
    exit(1);
}

void error_at2(char *loc, char *fmt, char *val1, char *val2) {
    char *line = loc;
    while (user_input < line && line[-1] != '\n') line--;

    char *end = loc;
    while (*end != '\n') end++;

    int line_num = 1;
    for (char *p = user_input; p < line; p++)
        if (*p == '\n') line_num++;

    int indent = fprintf(stderr, "%s:%d: ", filename, line_num);
    fprintf(stderr, "%.*s\n", (end - line), line);

    int pos = loc - line + indent;
    fprintf(stderr, "%*s", pos, "");  // pos個の空白を出力
    fprintf(stderr, fmt, val1, val2);
    exit(1);
}

// TODO: find better way to get enum name.
char *get_token_kind_name(TokenKind kind) {
    switch (kind) {
        case TK_RESERVED:
            return "TK_RESERVED";
        case TK_NUM:
            return "TK_NUM";
        case TK_EOF:
            return "TK_EOF";
        case TK_IDENT:
            return "TK_IDENT";
        case TK_RETURN:
            return "TK_RETURN";
        case TK_IF:
            return "TK_IF";
        case TK_ELSE:
            return "TK_ELSE";
        case TK_WHILE:
            return "TK_WHILE";
        case TK_FOR:
            return "TK_FOR";
        case TK_TYPE:
            return "TK_TYPE";
        case TK_SIZEOF:
            return "TK_SIZEOF";
        case TK_STRING:
            return "TK_STRING";
        case TK_STRUCT:
            return "TK_STRUCT";
        case TK_TYPEDEF:
            return "TK_TYPEDEF";
        case TK_ENUM:
            return "TK_ENUM";
        case TK_BREAK:
            return "TK_BREAK";
        case TK_CONTINUE:
            return "TK_CONTINUE";
        case TK_SWITCH:
            return "TK_SWITCH";
        case TK_CASE:
            return "TK_CASE";
        case TK_DEFAULT:
            return "TK_DEFAULT";
        case TK_TRUE:
            return "TK_TRUE";
        case TK_FALSE:
            return "TK_FALSE";
        case TK_NULL:
            return "TK_NULL";
        case TK_SEEKSET:
            return "TK_SEEKSET";
        case TK_SEEKCUR:
            return "TK_SEEKCUR";
        case TK_SEEKEND:
            return "TK_SEEKEND";
        case TK_ERRNO:
            return "TK_ERRNO";
        case TK_STDERR:
            return "TK_STDERR";
        default:
            error0("tried to read unexpected token kind");
    }
}