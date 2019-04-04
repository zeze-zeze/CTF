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
  # print h
  #print unhex(h)
  crypt+= chr(int(h[0:2]))+chr(int(h[2:4]))+chr(int(h[4:6]))
  # crypt+=h
print crypt

file=open('sol.zip','wb')  
file.write(base64.b64decode(crypt))
file.close() 
  