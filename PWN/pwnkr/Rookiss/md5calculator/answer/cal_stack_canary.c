#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) 
{
    int m = atoi(argv[2]);    // argv[2] = captcha
    int rands[8];
    int i;

    srand(atoi(argv[1]));    // argv[1] = time
    for (i = 0; i <= 7; i++)
    {
        rands[i] = rand();
    }

    m -= rands[1] + rands[2] - rands[3] + rands[4] + rands[5] - rands[6] + rands[7];

    printf("%x\n", m);
    return 0;
}
