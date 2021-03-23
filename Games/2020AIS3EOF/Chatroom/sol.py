#encoding=utf-8
from pwn import *

def num2hex(n):
    return hex(n)[2:].rjust(2, '0')

r = remote('eofqual.zoolab.org', 10110)
#r = remote('localhost', 6000)

r.recvline()
cipher = r.recvline().split(b': ')[1].strip()[:-32].decode()
assert len(cipher) == 64
r.recvline()


print('cipher: {}'.format(cipher), len(cipher))

# \xe7\x94\xb7
iv = cipher[32:48]
tested = cipher[48:64]

flag = b'FLAG{0r4'
flag = b'cL3_nEVe'
flag = b'R_D1e}'
ivb = bytes.fromhex(iv)
index = 3

for i in range(256):
    payload = iv[:index * 2] + num2hex(flag[index] ^ ivb[index] ^ 0xe7) + num2hex(flag[index + 1] ^ ivb[index + 1] ^ 0x94) + num2hex(i ^ ivb[index + 2] ^ 0xb7) + iv[(index + 3) * 2:] + tested
    #print(payload, len(payload))
    assert len(payload) == 32
    r.sendline(payload)
    #r.recvline()
    #print('plain:', r.recvline().decode('utf-8'))
    #print(r.recvline().decode('utf-8'))
    res = r.recvline().decode('utf-8')
    #print(res)
    if '對方離開' in res:
        print(chr(i))
        break
'''
# try first 2
for j in range(256):
    print(j)
    for i in range(256):
        #payload = iv[:index * 2] + num2hex(flag[index] ^ ivb[index] ^ 0xe7) + num2hex(flag[index + 1] ^ ivb[index + 1] ^ 0x94) + num2hex(i ^ ivb[index + 2] ^ 0xb7) + iv[(index + 3) * 2:] + tested
        payload = iv[:index * 2] + num2hex(flag[index] ^ ivb[index] ^ 0xe7) + num2hex(j ^ ivb[index + 1] ^ 0x94) + num2hex(i ^ ivb[index + 2] ^ 0xb7) + iv[(index + 3) * 2:] + tested
        #print(payload, len(payload))
        assert len(payload) == 32
        r.sendline(payload)
        #r.recvline()
        #print('plain:', r.recvline().decode('utf-8'))
        #print(r.recvline().decode('utf-8'))
        res = r.recvline().decode('utf-8')
        #print(res)
        if '對方離開' in res:
            print(chr(j))
            print(chr(i))
            break
'''

'''
# try first 3
for k in range(120, 256):
    guess = '00' * 5 + hex(i)[2:].rjust(2, '0') + hex(j)[2:].rjust(2, '0') + hex(k)[2:].rjust(2, '0')
    print(tested)
    payload = guess + tested
    assert len(payload) == 32
    r.sendline(payload)
    print('payload: {}, guess: {}'.format(payload, guess))
    r.recvline()
    res = r.recvline().decode()
    print('res: {}'.format(res))
    if '對方離開' in res:
        ivb = bytes.fromhex(iv)
        print('Got it:', i ^ 0xe7 ^ ivb[6], j ^ 0x94 ^ivb[7], k ^ 0xb7 ^ ivb[8])
        break
'''
