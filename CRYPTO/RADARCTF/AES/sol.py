# python2
# coding=utf-8
from crypt import *

data='vLlZz11nZdu84N57/eqkJJ0EXIlgedx41w/akqmreH7aD8pr0Bds8dNaWvbWd9MW/zeCAFzjYav+XQtyv6eijA=='
test=open('~/env/rockyou.txt').readlines()
for t in test:
  try:  
    res=AESCipher(data, t.strip()).decrypt()
    if 'radar' in res:
      print res
      print t
      break
  except:
    continue