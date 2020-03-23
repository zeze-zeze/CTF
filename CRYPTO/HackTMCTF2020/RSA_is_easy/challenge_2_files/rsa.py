import random
from my_math import next_prime

from flag import flag

def egcd(a, b):
    x, y, u, v = 0, 1, 1, 0
    while a != 0:
        q, r = b//a, b % a
        m, n = x-u*q, y-v*q
        b, a, x, y, u, v = a, r, u, v, m, n
        gcd = b
    return gcd, x, y

def gen_keys(p, q):
    e = 65537
    n = p * q
    phi = (p - 1) * (q - 1)
    gcd, d, b = egcd(e, phi)
    # Keys:((pub),  (priv))
    return ((e, n), (d, n))


def enc(key, p):
    e, n = key
    cipher = [pow(ord(char), e, n) for char in p]
    return cipher

def dec(pk, c):
    key, n = pk
    plain = [chr(pow(char, key, n)) for char in c]
    return ''.join(plain)


p = next_prime(random.SystemRandom().getrandbits(512))
q = next_prime(random.SystemRandom().getrandbits(512))

flag_key=gen_keys(p, q)

print("Public key:")
print(flag_key[0])

flag_c=(enc(flag_key[0], flag))

print("Encrypted flag:")
print(flag_c)