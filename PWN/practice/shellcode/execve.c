#include<unistd.h>
#include<stdlib.h>

char *buf[] = {"/bin/sh", NULL};
void main(){
  execve("/bin/sh", buf, 0);
  exit(0);
}
