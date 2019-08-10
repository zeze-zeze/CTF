#include <stdio.h>
int main(){
    setvbuf(stdin, NULL, _IONBF, 0);
    setvbuf(stdout, NULL, _IONBF, 0);
    char buf[112];
    printf("Your address of input buffer is %p\n", &amp;buf);
    read(0, &amp;buf, 128);
    return 0;
}
