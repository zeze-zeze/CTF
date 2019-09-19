#coding=utf-8
import string
from Crypto.Cipher import DES
import re

IV = '13371337'
offset = 9133337
decode = ''
cipher = open('./FLAG.enc').read()
duck = string.printable[:10] + '0abcdef' 
decrypt = ''

for i in range(0, len(cipher), 8):
    decode += duck[int(cipher[i:i+8]) - offset]

decode = decode.decode('hex').decode('hex')


possible_keys = open('weak_keys').read().strip().split('\n')
possible_keys = open('weak').read().strip().split('\n')
for i in range(len(possible_keys)):
    possible_keys[i] = ''.join(possible_keys[i].split(' '))
print possible_keys

for key1 in possible_keys:
    for key2 in possible_keys:
        key1_cipher = DES.new(key1.decode('hex'), DES.MODE_OFB, IV)
        key2_cipher = DES.new(key2.decode('hex'), DES.MODE_OFB, IV)
        plain = key1_cipher.encrypt(decode)
        while plain[-1] == '_':
            plain = plain[:-1]
        plain = key2_cipher.encrypt(plain)
        
        if 'flag' in plain or 'flag'.encode('hex') in plain:
            print plain
            open('plain', 'w').write(plain)

