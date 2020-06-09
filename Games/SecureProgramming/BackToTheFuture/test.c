#include<stdio.h>

int main(){
  char a[100] = "asdasd";
  a[0] ^= 256 *3 + 1;
  printf("%c\n", a[0]);
}
