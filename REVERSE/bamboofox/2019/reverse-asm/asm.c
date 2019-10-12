#include<stdio.h>

char cipher[27] = "#\x0c\x0f\r\x00))\x17\x03:2\x00@^\x0fSH&~R,9\x13\x1b\x13";
void print_flag(){
    char flag[27];
	flag[25] = '}';
	for(int i=24; i>=0; i--){
	    flag[i] = flag[i+1] ^ cipher[i];	
	}
    printf("%s", flag);
}

void guess(int a){
    if(a==487){
        print_flag();
    }
}

void main(){
	int a;
	scanf("%d", &a);
    guess(a);
}
