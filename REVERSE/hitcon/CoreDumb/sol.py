#coding=utf-8
from Crypto.Hash import SHA256

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
