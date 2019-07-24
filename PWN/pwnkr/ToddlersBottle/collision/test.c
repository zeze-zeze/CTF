#include<stdio.h>
#include<string.h>

unsigned long check_password(const char* p){
  int* ip = (int*)p;
  int a,b,c,d,e;
  printf("%d", ip[1]);
  return 1;
}

int main(int argc, char*argv[]){
  check_password(argv[1]);
}
