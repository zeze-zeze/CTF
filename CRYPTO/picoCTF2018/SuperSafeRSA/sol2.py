#! /usr/bin/python
# coding=utf-8
import gmpy

# pollard方法，在p-1的最大公因數很小的時候使用，詳情請見bamboofox講義
def pollard(n):
  a=2
  b=2
  while True:
    a=pow(a, b, n)
    d=gmpy.gcd(n, a-1)
    if d>1:
      return d
    b+=1

ciphertext=7235986261039747451470575125378785595442111967203233235529285972501577658979783
n=13199652077046600323126987406799010768523173050972064840177556594393288982274389
e=65537

print pollard(n)