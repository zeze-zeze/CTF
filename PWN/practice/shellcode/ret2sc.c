#include<stdio.h>
 
char name[36];
 
void main(){
    char buffer[24];
    setvbuf(stdin, NULL, _IONBF, 0);
    setvbuf(stdout, NULL, _IONBF, 0);
    printf("Input Your Name: ");
    read(0, &amp;name, 50);
    printf("Show Your Skill: ");
    gets(&amp;buffer);
}
