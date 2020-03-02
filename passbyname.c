#include<stdio.h>

typedef int (*IntProc) ();
int divByZero() {
    return 1/0;
}
int p(int x, IntProc y){
    if (x) return 1;
    else return y();
}

int main() {
    int x;
    printf("%d\n",5+3*4);
    x = 1 || 1/0;
    x = 0 && 1/0;
    printf("x=%d\n",x);
    printf("%d\n", p(1, divByZero));
    return 0;
}