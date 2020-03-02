#include<stdio.h>

int nontailf(int n){
  if(n==1)
    return 1;
  else
    return n*nontailf(n-1);
}

int tailf(int n, int result){
  if(n==1)
    return result;
  else
    return tailf(n-1, n*result);
}

void main() {
  int n;
  scanf("%d", &n);
  printf("Nontail sonuç: %d\n", nontailf(n));
  printf("Tail sonuç: %d\n", tailf(n, 1));
}
