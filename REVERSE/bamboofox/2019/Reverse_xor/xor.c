#include<stdio.h>
#include<string.h>
#include <stdlib.h>

int main(){
  int c1[33] = {114, 105, 111, 106, 104, 111, 101, 105, 106, 103, 108, 115, 100, 105, 106, 103, 106, 111, 105, 106, 119, 101, 111, 105, 105, 111, 119, 101, 106, 114};
  int c2[33] = {48, 8, 2, 8, 7, 0, 35, 6, 18, 28, 36, 67, 19, 54, 41, 83, 4, 48, 48, 90, 2, 58, 55, 89, 27, 48, 58, 86, 23, 120};
  printf("input the flag : ");
  char flag[100];
  scanf("%s", flag);
  int success = 1;
  for(int i=0; i<29; i++){
    char a = c1[i] ^ c2[i];
    if(flag[i] != a){
      printf("You lose !!\n");
      success = 0;
      break;
    }  
  }
  if(success)printf("You win !!\n");
}
