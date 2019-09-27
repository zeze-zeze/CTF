#include<stdio.h>

int main(){
    int key = 400;
    for(int i=0; i<=10; i++){
        key += i;
    }
    if(key + 45 == 500){
        printf("success");
    }
}
