#include<stdio.h>
#include<stdlib.h>

int main(int argc, char* argv[], char *env[]){
  for(int i=0;; i++){
    if(env[i])printf("%s", env[i]);
    else break;
  }
}
