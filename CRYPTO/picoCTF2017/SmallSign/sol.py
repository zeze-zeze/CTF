#! python2
# coding=utf-8
from pwn import *
from Crypto.Util import number
import gmpy
import time

MAX=400

def find_prime_factor(num):
  prime_factor=[]
  num_root=gmpy.root(num, 2)[0]+1
  print num_root
  i=2
  while i<num_root:
    if num%i==0:
      prime_factor.append(i)
      num/=i
    else:
      i+=1
  prime_factor.append(num)
  return prime_factor

def connect():
  r=remote('shell2017.picoctf.com', 27525)
  res=r.recvuntil('Enter a number to sign (-1 to stop):').split('\n')
  n=int(res[1][3:])
  e=int(res[2][3:])
  print 'n:'+str(n)+', e:'+str(e)

  sign={1:1}
  i=2
  while True:
    if number.isPrime(i):
      r.sendline(str(i))
      sign[i]=int(r.recvuntil('Enter a number to sign (-1 to stop):').split('\n')[0][12:])
      print i
    i+=1
    if i==MAX:
      break

  r.sendline('-1')
  challenge=int(r.recvuntil('Enter the signature of the challenge:').split('\n')[0][12:])
  prime_factor=find_prime_factor(challenge)
  print prime_factor

  if prime_factor[-1]<MAX and prime_factor[-2]<MAX:
    answer=1
    for i in prime_factor:
      answer=answer*sign[i]%n
    r.sendline(str(answer))
    return r.recvall(timeout=2)
  else:
    return False

while True:
  while True:
    try:
      flag=connect()
      break
    except:
      print 'sleep 2'
      time.sleep(2)
  print 'not'
  if flag:
    print flag
    break
