#! /usr/bin/python
# coding=utf-8
from Crypto.Util.number import *
from random import randint


# 加密
def encrypt(plaintext, E, N):
  bin_E=bin(E)
  cipher=1
  for i in range(2, len(bin_E)):
    cipher=cipher**2
    if bin_E[i]=='1':
      cipher*=plaintext
    cipher%=N
  return cipher

# 解密
def decrypt(ciphertext, D, N):
  bin_D=bin(D)
  plain=1
  for i in range(2, len(bin_D)):
    plain=plain**2
    if bin_D[i]=='1':
      plain*=ciphertext
    plain%=N
  return plain


p=getPrime(512)
q=getPrime(512)
n=p*q
phi=(p-1)*(q-1)
e=getPrime(5)
while phi%e==0:
  e=getPrime(5)
d=inverse(e, phi)

message=100

print decrypt(encrypt(message, e, n), d, n)