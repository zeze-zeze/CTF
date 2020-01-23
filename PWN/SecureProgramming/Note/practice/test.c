#include <stdio.h>
#include <stdlib.h>

int main(){
    void *ptr, *p2;
    ptr = malloc(0x30);
    p2 = malloc(0x30);

    free(ptr);
    free(p2);
    return 0;
}
