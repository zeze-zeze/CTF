#include<stdio.h>

int main(){
    printf("input from 1 to 3\n");
    int input;
    for(int i=1; i<=3; i++){
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
    printf("\n\nBambooFox{Y34h_Y0u_L34rn_nc4t}\n");
}
