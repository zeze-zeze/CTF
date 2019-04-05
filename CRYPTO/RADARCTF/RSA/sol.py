# python2
# coding=utf-8
from Crypto.Util import number
import base64
from pwn import *

n=7576962585305391589
e=65537
p=2045145391
q=3704852779
phi=(p-1)*(q-1)
d=number.inverse(e, phi)

data=open('RSA2.txt').read().split('\n')
crypt=''
for da in data:
  h=str(pow(int(da), d, n))
  crypt+=h

decoded=[chr(int(crypt[i:i+2])) for i in range(0, len(crypt), 2)]
decoded=''.join(decoded)
asci=base64.b32decode(decoded).split(' ')

flag=''
for asc in asci:
  flag+=chr(int(asc))
print flag