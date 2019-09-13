#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv[]) {
  char buf[32];
  printf("Hello!\n");
  printf("Here I am: %p\n", printf);
  gets(buf);
}
