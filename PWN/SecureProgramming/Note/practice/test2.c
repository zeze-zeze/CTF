#include <stdio.h>
#include <stdlib.h>

int main(){
    void *p1, *p2;
    p1 = malloc(0x300);
    p2 = malloc(0x30);

    free(p1);
    free(p1);
    puts(p2);
    return 0;
}
