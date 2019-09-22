#include<stdio.h>
#include<string.h>

int main(){
  char *c1 = {114, 105, 111, 106, 104, 111, 101, 105, 106, 103, 108, 115, 100, 105, 106, 103, 106, 111, 105, 106, 119, 101, 111, 105, 105, 111, 119, 101, 106, 114};
  char *c2 = {48, 8, 2, 8, 7, 0, 35, 6, 18, 28, 36, 67, 19, 54, 41, 83, 4, 48, 48, 90, 2, 58, 55, 89, 27, 48, 58, 86, 23, 120};
  printf("input the flag :");
  char flag[100];
  scanf("%s", flag);
  int success = 1;
  for(int i=0; i<strlen(c1); i++){
    if(flag[i] != c1[i] ^ c2[i]){
      printf("You lose !!");
      success = 0;
      break;
    }  
  }
  if(success)printf("You win !!");
}
