int main(int argc, char const *argv[]) {
    int *x;
    *x = 10;
    return *x;
}

struct Hoge {
    int a;
}[] a = {{1}, {2}};
