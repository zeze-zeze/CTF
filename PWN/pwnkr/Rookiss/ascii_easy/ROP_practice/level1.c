#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>

void vulnerable_function(){
  char buf[128];
  read(STDIN_FILENO, buf, 256);
}

int main(){
  vulnerable_function();
  write(STDOUT_FILENO, "Hello, world\n", 13);
}
