#coding=utf-8
from z3 import *
from Crypto.Util import number
from pwn import *

a1 = 2136772529
a2 = 1234567890

def calc_key3():
  v1 = BitVec('v1', 32)
  v2 = BitVec('v2', 32)
  s = Solver()
  s.add(v2 * v1 == -574406350)
  s.add((v1 ^ 0x7e) * (v2 + 16) == 1931514558)
  s.add((v1 - v2) & 0xfff == 3295)
  s.add(v1 % 2 != 0)
  s.add(v1 % 3 != 0)
  #s.add(a1 != 2136772529)
  for i in range(6, 100, 6):
    s.add(v1 % (i+1) != 0)
    s.add(v1 % (i-1) != 0)
  '''
  fib_restriction = [v1 == 1]
  fib1 = 1
  fib2 = 1
  for _ in range(3, 10000):
    tmp = fib1 + fib2
    fib_restriction.append(v1 == tmp)
    fib1 = fib2
    fib2 = tmp
  s.add(Or(fib_restriction))
  '''
  s.check()
  print s.model()
if not a1 and not a2:
  calc_key3()

a3 = 1992541599
def find_a3():
  v3 = BitVec('v3', 32)
  s = Solver()
  s.add(-1953148422 * v3 == int('GALF'.encode('hex'), 16))
  s.add(v3 != 1992541599)
  s.check()
  print s.model()
if not a3:
  find_a3()

def decrypt_flag():
  binary = open('./what-the-hell').read() 
  junk_data = binary[binary.find('\x09\x23\x8c\xb9\x2f\x19\x8d') : binary.find('\x09\x23\x8c\xb9\x2f\x19\x8d') + 4096]
  global a1, a2, a3
  flag = ''
  while a2:
    flag += chr((ord(junk_data[a1 & 0xfff]) ^ a2) & 0x7f)
    a1 *= 77777
    a2 = a3 ^ (a2 >> 1)
    a3 >>= 1
  print flag

decrypt_flag()
