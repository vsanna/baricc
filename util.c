#include "9cc.h"

// util
char *filename;
char *read_file(char *path) {
    FILE *fp = fopen(path, "r");
    if (!fp) {
        error2("cannot open %s: %s", path, strerror(errno));
    }

    // ファイルサイズを調べる
    if (fseek(fp, 0, SEEK_END) == -1) {
        error2("%s: fseek: %s", path, strerror(errno));
    }
    size_t size = ftell(fp);
    if (fseek(fp, 0, SEEK_SET) == -1) {
        error2("%s: fseek: %s", path, strerror(errno));
    }

    // ファイルを読み込む
    char *buf = calloc(1, size + 2);
    fread(buf, size, 1, fp);

    // ファイルの末尾に改行なければ入れておく. EOF処理の簡易化
    if (size == 0 || buf[size - 1] != '\n') {
        buf[size++] = '\n';
    }

    buf[size] = '\n';
    fclose(fp);
    return buf;
}

// for debugging
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
        print_type(type->ptr_to);
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
    // locが含まれている行の開始地点と終了地点を取得
    char *line = loc;
    while (user_input < line && line[-1] != '\n') line--;

    char *end = loc;
    while (*end != '\n') end++;

    // 見つかった行が全体の何行目なのかを調べる
    int line_num = 1;
    char *p;
    for (p = user_input; p < line; p++)
        if (*p == '\n') line_num++;

    // 見つかった行を、ファイル名と行番号と一緒に表示
    int indent = fprintf(stderr, "%s:%d: ", filename, line_num);
    fprintf(stderr, "%.*s\n", (end - line), line);

    // エラー箇所を"^"で指し示して、エラーメッセージを表示
    int pos = loc - line + indent;
    fprintf(stderr, "%*s", pos, "");  // pos個の空白を出力
    fprintf(stderr, fmt);
    exit(1);
}

void error_at1(char *loc, char *fmt, char *val) {
    // locが含まれている行の開始地点と終了地点を取得
    char *line = loc;
    while (user_input < line && line[-1] != '\n') line--;

    char *end = loc;
    while (*end != '\n') end++;

    // 見つかった行が全体の何行目なのかを調べる
    int line_num = 1;
    for (char *p = user_input; p < line; p++)
        if (*p == '\n') line_num++;

    // 見つかった行を、ファイル名と行番号と一緒に表示
    int indent = fprintf(stderr, "%s:%d: ", filename, line_num);
    fprintf(stderr, "%.*s\n", (int)(end - line), line);

    // エラー箇所を"^"で指し示して、エラーメッセージを表示
    int pos = loc - line + indent;
    fprintf(stderr, "%*s", pos, "");  // pos個の空白を出力
    fprintf(stderr, fmt, val);
    exit(1);
}

void error_at2(char *loc, char *fmt, char *val1, char *val2) {
    // locが含まれている行の開始地点と終了地点を取得
    char *line = loc;
    while (user_input < line && line[-1] != '\n') line--;

    char *end = loc;
    while (*end != '\n') end++;

    // 見つかった行が全体の何行目なのかを調べる
    int line_num = 1;
    for (char *p = user_input; p < line; p++)
        if (*p == '\n') line_num++;

    // 見つかった行を、ファイル名と行番号と一緒に表示
    int indent = fprintf(stderr, "%s:%d: ", filename, line_num);
    fprintf(stderr, "%.*s\n", (int)(end - line), line);

    // エラー箇所を"^"で指し示して、エラーメッセージを表示
    int pos = loc - line + indent;
    fprintf(stderr, "%*s", pos, "");  // pos個の空白を出力
    fprintf(stderr, fmt, val1, val2);
    exit(1);
}
