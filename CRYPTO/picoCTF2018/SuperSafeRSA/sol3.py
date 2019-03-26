#! /usr/bin/python
# coding=utf-8
from pwn import *
from Crypto.Util.number import *

# 取反元素(為了求d)
def getInverse(e, phi):
  u1,u2,u3=1,0,e
  v1,v2,v3=0,1,phi
  while v3!=0:
    r=u3//v3
    v1,v2,v3,u1,u2,u3=(u1-r*v1),(u2-r*v2),(u3-r*v3),v1,v2,v3
  return u1%phi

# 題目給的
ciphertext=7235986261039747451470575125378785595442111967203233235529285972501577658979783
n=13199652077046600323126987406799010768523173050972064840177556594393288982274389
e=65537

# 質因數分解網站
# https://www.alpertron.com.ar/ECM.HTM
p=100358606646260244539408957453750914997
q=131524863867153651350316637537039784693537

phi=(p-1)*(q-1)
d=inverse(e, phi)

# 把ciphertext還原
d_bin=bin(d)[2::]
plain=pow(ciphertext, d, n)

# 把原文變成hex再轉ascii變成flag
print unhex(hex(plain)[2::])
