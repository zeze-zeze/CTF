# python2
# coding=utf-8

cipher=':<M?TLH8<A:KFBG@V'

for i in range(256):
  flag=''
  for c in cipher:
    flag+=chr((ord(c)+i)%0xff)
  if 'actf' in flag:
    print flag
