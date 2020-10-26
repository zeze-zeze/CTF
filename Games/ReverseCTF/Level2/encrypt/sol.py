from pwn import *
import string

cipher = b'zGs7@ABp"sIp/3bn@-:A-G]CllNNK'
asci = ''.join([chr(i) for i in range(33, 127)])
asci = string.printable

p = process('encrypt')
print(asci, len(asci))
p.sendline(asci)
res = p.recvall(10)
print(res)

table = {}
for a, r in zip(asci, res):
    table[r] = a

print(table, len(table))

flag = ''
for c in cipher:
    flag += table[c]
print(flag)
