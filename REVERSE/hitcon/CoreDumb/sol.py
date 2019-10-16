#coding=utf-8
from Crypto.Hash import SHA256

'''
f = open('./core').read()
flag_len = 10
while 1:
  for i in range(len(f)):
    guess = f[i:i + flag_len]
    h = SHA256.new()
    h.update(guess)
    res = h.hexdigest()
    if res == '333fbc11481fca3501fff9f69f8f9c7d95f143272d451a3aea8c0b898379d88d':
      print guess
      break
  flag_len += 1
  if flag_len >= 80:
    break
  print flag_len
'''

core = open('core').read()
v7_start = core.find('\x1f\x4b\x3c\x6b')
v7 = core[v7_start : v7_start + 267].encode('hex')
v7 = ''.join(['\\x' + hex(((int(v7[i:i+2], 16) + i))%256)[2:] for i in range(0, len(v7), 2)])
print v7
