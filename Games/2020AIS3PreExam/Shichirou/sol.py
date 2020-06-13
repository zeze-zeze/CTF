from pwn import *

r = remote('60.250.197.227', 11000)

tar = open('chal.tar').read()
r.sendline(str(len(tar)))
r.sendline(tar)
print(r.recvall(1))
