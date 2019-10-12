#include<stdio.h>

int main(){
    printf("input from 1 to 1000\n");
    int input;
    for(int i=1; i<=1000; i++){
        printf("input %d: ", i);
        scanf("%d", &input);
        if(i==input){
            printf("\nYou are right!\n");
        }
        else{
            printf("\nNo !!\n");
            return 1;
        }
    }
    printf("\n\nBambooFox{Pwnt00ls_1s_r34lly_gr34t!!}\n");
}
