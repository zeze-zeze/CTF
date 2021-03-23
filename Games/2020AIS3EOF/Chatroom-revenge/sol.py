#encoding=utf-8
from pwn import *

printable = [p for p in '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ{}!?_']
def num2hex(n):
    return hex(n)[2:].rjust(2, '0')

'''
table = {} 
for p in printable:
    table[p] = []
    for j in range(256):
        if i ^ 0x80 <= 0xbf and i ^ 0x80 >= 0x80:
            table[p].append(chr(i))
    table[p] = list(set(printable) & set(table[p]))
    print(len(table[p]))
    assert len(table[p]) == 55
'''

left = printable.copy()
flag = b'FLAG{'
index = 4

r = remote('eofqual.zoolab.org', 10111)
#r = remote('localhost', 6000)

r.recvline()
cipher = r.recvline().strip().split(b': ')[1].strip()[:-32].decode()
#assert len(cipher) == 64
r.recvline()
print('cipher: {}'.format(cipher), len(cipher))

# \xc2~\xdf + \x80~\xbf
iv = cipher[:16]
tested = cipher[16:32]
print('iv: {}, tested: {}'.format(iv, tested))
assert len(iv) == 16 and len(tested) == 16

ivb = bytes.fromhex(iv)

good = []
count = 0
for i in range(256):
    payload = iv[:(index - 1) * 2] + num2hex(ivb[index - 1] ^ flag[index - 1] ^ 0xc2) + num2hex(i ^ 0xbf) + iv[(index + 1) * 2:] + tested
    #payload = iv[:6] + num2hex(ivb[3] ^ ord('G') ^ 0xc2) + num2hex(ivb[4] ^ ord('{') ^ 0x80) + iv[10:] + tested
    #print(payload, len(payload))
    assert len(payload) == 32
    r.sendline(payload)
    
    #r.recvline()
    #r.recvline()
    #print(r.recvline())
    #print('plain:', r.recvline().decode('utf-8'))
    #print(r.recvline().decode('utf-8'))
    res = r.recvline().decode('utf-8')
    #print(res)
    if '哈哈哈' in res:
        good.append(chr(i ^ ivb[index]))
        count += 1
assert count == 64
left = list(set(left) & set(good))
left.sort()

print(left)
'''
for t in table:
    if table[i] == left:
        print(t)
'''
