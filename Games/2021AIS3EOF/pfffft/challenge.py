#!/usr/bin/env python3

from Crypto.Util.number import *
from secret import flag

def encrypt(msg):
    l = len(msg) // 2
    m0, m1 = bytes_to_long(msg[:l]), bytes_to_long(msg[l:])
    p = m1 << 1
    while not isPrime(p+1):
        p *= getPrime(31)
    p = p+1
    q = ((p * 69) + 69 ) ^ 69
    while not isPrime(q):
        count += 1
        q *= 69
        q += 69
        q ^= 69
    n = p * q
    while True:
        y = getRandomRange(1, n)
        if pow(y, m1, n) != 1:
            break
    while True:
        u = getRandomRange(1, n)
        if GCD(u, n) == 1:
            break
    c = pow(y, m0, n) * pow(u, (p - 1) * (q - 1) // m1, n)
    return n, y, c
    
if __name__ == '__main__':
    n, y, c = encrypt(flag)
    print('n =', n)
    print('y =', y)
    print('c =', c)
