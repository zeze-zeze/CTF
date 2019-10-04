#include<stdio.h>
#include<stdlib.h>
#include<time.h>

void main(){
    srand(time(0));
    int i;
    for(i = 1; i <= 30; i++){
        printf("%d\n", rand());
    }
}
