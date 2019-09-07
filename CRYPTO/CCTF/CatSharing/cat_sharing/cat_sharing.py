#!/usr/bin/env python

import random
from Crypto.Util.number import *
from fractions import gcd
import gmpy
from flag import flag

def make_participants_key(l, nbit):
    while True:
        p, q = getPrime(nbit), getPrime(nbit)
        N, phi = p * q, (p-1)*(q-1)
        x = random.randint(1, N)
        if (N % 8 == 1) and (phi % 8 == 4) and (p != q):
            if pow(q ** 2 * x, (p-1)/2, p) + pow(p ** 2 * x, (q-1)/2, q) == N - phi - 1:
                break
    participants_key = []
    r, s = [getPrime(nbit) for _ in '01']
    for i in range(l):
        u, v = gmpy.next_prime(r), gmpy.next_prime(s)
        u -= u % 4
        v -= v % 8
        participants_key.append((long(u), long(v)))
        r, s = u + 2 * v, v + 3 * u
    e0 = phi + sum([participants_key[i][0] for i in range(len(participants_key))]) + sum([participants_key[i][1] for i in range(len(participants_key))])
    return (x, N), (participants_key, e0)

def encrypt(msg, pkey):
    msg, C = bin(bytes_to_long(msg))[2:], []
    x, N = pkey
    for b in msg:
        while True:
            r = random.randint(1, N)
            if gcd(r, N) == 1:
                br = bin(r)[2:]
                c = (pow(x, int(br + b, 2), N) * r ** 2) % N
                C.append(c)
                break
    return C

l, nbit = 14, 512
pkey, skeys = make_participants_key(l, nbit)
enc = encrypt(flag, pkey)