#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<iostream>

using namespace std;
int main(){
  char *argv[2019] = {0};
  char *envp[1] = {"\x01"};
  
  argv[0] = "\x01/2018.rev";
  for(int i=1; i<2018; i++){
    argv[i] = "1";
  }
  execve("\x01/test", argv, envp);
}
