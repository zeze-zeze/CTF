# coding=utf-8
# import gmpy
from Crypto.Util import number
from pwn import *

r = remote('pre-exam-chals.ais3.org', 10201)
res = r.recvuntil('n = ?').split(':')
e = int(res[1].split(',')[0][2:])
n = int(res[1].split(',')[1].split(')')[0])
cipher = int(res[2].split('\n')[0][1:])
print 'get num'

# find high and low
phi = '64'
while True:
  r.sendline(phi)
  res = int(r.recvuntil('n = ?').split('\n')[1].split(' ')[-1])
  if res == 0:
    phi += '64'
  else:
    high = phi
    low = phi[:-2]
    break
print 'high: {0} and low: {1} found'.format(high, low)

# binary search
while True:
  dist = (int(high) - int(low))/64/2
  tried = str(int(low) + 64*dist)
  print tried
  r.sendline(tried)
  res = int(r.recvuntil('n = ?').split('\n')[1].split(' ')[-1])
  if res == 0:
    low = tried
  else:
    high = tried
  
  if (int(high) - int(low))/64 <=1:
    break

for i in range(int(low), int(high)):
  r.sendline(str(i))
  res = int(r.recvuntil('n = ?').split('\n')[1].split(' ')[-1])
  if res == 0:
    phi = int(i)

print 'search done'

d = number.inverse(e, phi)
plain = pow(cipher, d, n)
print plain