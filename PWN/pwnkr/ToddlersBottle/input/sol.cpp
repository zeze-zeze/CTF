#include<iostream>
#include <unistd.h>

using namespace std;
int main(){
  char *argv[101];
  char *envp[2];

  for(int i=1; i<100; i++){
    if(i == 'A') argv[i] = "\x00";
    else if(i == 'B') argv[i] = "\x20\x0a\x0d";
    else argv[i] = "0";
  }
  argv[0] = "./input";
  argv[100] = NULL;
  execve("./input", argv, envp);
}
