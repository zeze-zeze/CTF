#coding=utf-8
from pwn import *
import sympy

r = remote('2019shell1.picoctf.com', 49989)
pro1 = r.recvuntil('(Y/N)').split('\n')
r.sendline('Y')
q = int(pro1[-5].split(' ')[2])
p = int(pro1[-4].split(' ')[2])
r.sendline(str(p*q))

pro2 = r.recvuntil('(Y/N)').split('\n')
r.sendline('Y')
p = int(pro2[-5].split(' ')[2])
n = int(pro2[-4].split(' ')[2])
r.sendline(str(n/p))

pro3 = r.recvuntil('(Y/N)')
r.sendline('N')

pro4 = r.recvuntil('(Y/N)').split('\n')
r.sendline('Y')
q = int(pro4[-5].split(' ')[2])
p = int(pro4[-4].split(' ')[2])
r.sendline(str((p-1)*(q-1)))

pro5 = r.recvuntil('(Y/N)').split('\n')
r.sendline('Y')
plain = int(pro5[-6].split(' ')[2])
e = int(pro5[-5].split(' ')[2])
n = int(pro5[-4].split(' ')[2])
r.sendline(str(pow(plain, e, n)))

pro6 = r.recvuntil('(Y/N)').split('\n')
r.sendline('Y')
cipher = int(pro6[-6].split(' ')[2])
e =int(pro6[-5].split(' ')[2])
n = int(pro6[-4].split(' ')[2])
r.sendline(str(pow(cipher, float(1)/e)))

print r.recvall(1)
