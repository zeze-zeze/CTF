def int_to_bytes(x: int) -> bytes:
    return x.to_bytes((x.bit_length() + 7) // 8, 'big')


def int_from_bytes(xbytes: bytes) -> int:
    return int.from_bytes(xbytes, 'big')


def egcd(a, b):
    x, y, u, v = 0, 1, 1, 0
    while a != 0:
        q, r = b//a, b % a
        m, n = x-u*q, y-v*q
        b, a, x, y, u, v = a, r, u, v, m, n
        gcd = b
    return gcd, x, y


def enc(key, plaintext):
    e, n = key
    m = int_from_bytes(plaintext.encode())
    return pow(m, e, n)


def dec(key, ciphertext):
    d, n = key
    plain = ""
    return int_to_bytes(pow(ciphertext, d, n))

# keys: Public: (e,n), Private (d,n)


def generate_keypair(p, q):
    e = 65537
    n = p * q
    phi = (p - 1) * (q - 1)
    gcd, d, b = egcd(e, phi)
    # Keys:((pub),  (priv))
    return ((e, n), (d, n))

'''
#demo usage

message = "Hello there"
k = generate_keypair(p, q)
c = enc(k[0], message)
p = dec(k[1], c)

print(k)
print(c)
print(p)
'''