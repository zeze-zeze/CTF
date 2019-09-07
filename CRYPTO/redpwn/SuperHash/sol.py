#coding=utf-8
from Crypto.Hash import MD5
import string

cnt = 0
include = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
#for t in string.lowercase:
for s in include:
  for r in include:
    for q in include:
      for p in include:
        cnt += 1
        secret = p + q + r + s
        hashed = secret
        for _ in range(10):
          h = MD5.new()
          h.update(hashed)
          hashed = h.hexdigest()
        if hashed == 'CD04302CBBD2E0EB259F53FAC7C57EE2':
          print 'secret = {}'.format(secret)
          exit(0)
        if cnt % 10000== 0:
          print cnt
          print secret
          print hashed

