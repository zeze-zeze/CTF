#include<stdio.h>
#include<stdlib.h>
#include<fcntl.h>

int main(){
    int i, seed;
    scanf("%d", &seed);
    srand(seed);
    for(i=0; i<18; i++) printf("%d\n", rand() % 100);
}
