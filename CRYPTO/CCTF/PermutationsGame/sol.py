#coding=utf-8
from Crypto.Hash import SHA224, SHA384, SHA512, SHA1, MD5, SHA256
from pwn import *

r = remote('167.71.62.250', 20029)
que = r.recv(2000)
que = r.recv(2000)

alg = que[que.find('that'):que.find('(X)')][5:]
last6 = que.strip()[-6:]

print 'alg : {}, last6 : {}'.format(alg, last6)

payload = 'CCTF'
next_payload = ''
while 1:
  if alg == 'sha512':
    h = SHA512.new()
  elif alg == 'sha224':
    h = SHA224.new()
  elif alg == 'sha384':
    h = SHA384.new()
  elif alg == 'sha1':
    h = SHA1.new()
  elif alg == 'md5':
    h = MD5.new()
  elif alg == 'sha256':
    h = SHA256.new()

  h.update(payload)
  next_payload = h.hexdigest()
  #print payload[-6:]

  if next_payload[-6:] == last6:
    break
  else:
    payload = next_payload
print payload
r.sendline(payload)
#r.sendline('G')
print r.recvall(1)

'''
while 1:
  try:
    brute()
    break
  except:
    continue
''' 
