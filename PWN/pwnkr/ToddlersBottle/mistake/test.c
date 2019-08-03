#include<stdio.h>
#include<fcntl.h>

int main(void){
  int fd = open("./aaa", O_RDONLY, 0400) < 0;
  printf("%d", fd);
}
