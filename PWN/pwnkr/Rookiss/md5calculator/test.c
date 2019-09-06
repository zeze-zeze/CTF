#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main(){
  time_t seconds = time(NULL);
  printf("time : %ld\n", seconds);
  
  srand(seconds);
  printf("rand : %ld\n", rand());
}
