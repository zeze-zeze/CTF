#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
void nonSecure()
{
    char name[16];
    printf("What's your name?\n");
    gets(name);
    printf("Hey %s, you like ROP? I'll give you root!\n", name);
    setuid(0);
    system("Now_what_you_gonna_do...O_O\n");
}
int main()
{
    nonSecure();
    return 0;
}
