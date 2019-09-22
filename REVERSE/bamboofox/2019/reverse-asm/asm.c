#include<stdio.h>
#include<stdlib.h>

void main(){
  char *flag = "BambooFox{L3ts_s74rt_p14yin9_r3v3rs3}";
  printf("Input a number: ");
  int in;
  scanf("%d", &in);
  if(in == 487){
    printf("%s", flag);
  }
  else{
    printf("No No No......");
  }
}
