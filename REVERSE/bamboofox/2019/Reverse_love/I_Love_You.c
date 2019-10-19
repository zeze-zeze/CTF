#include<stdio.h>

int main(){
  long long num;
  printf("input a number: ");
  scanf("%lld", &num);
  if(num == 13145201314520){
    printf("BambooFox{%lld}\n", num);
  }
  else{
    printf("Wrong number TAT\n");
  }
}
