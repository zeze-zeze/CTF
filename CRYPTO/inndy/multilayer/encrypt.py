import base64
import binascii
import collections
import hashlib
import os
import random
import string

from Crypto.Util import number

p = number.getPrime(1024)
q = number.getPrime(1024)
n = p * q
e = number.getPrime(24)
print('RSA(n=0x%x, e=0x%x)' % (n, e))

def rsa_encrypt(x):
    v = number.bytes_to_long(x)
    return pow(v, e, n)

def xor(a, b):
    return bytes(i ^ j for i, j in zip(a, b))

flag = open('flag', 'rb').read()

assert flag.startswith(b'FLAG{') and flag.endswith(b'}\n')
print(hashlib.sha256(flag).hexdigest())

def layer1(data):
    data = data.decode('ascii')

    s = string.ascii_uppercase
    t = list(s)
    random.shuffle(t)
    t = ''.join(t)

    print(collections.Counter(data))

    return data.translate(str.maketrans(s, t)).encode('ascii')

def layer2(data):
    return bytes(b * 17 % 251 for b in data)

def layer3(data):
    output = []
    key = number.bytes_to_long(os.urandom(128))

    for i in data:
        key = (key * 0xc8763 + 9487) % 0x10000000000000000
        output.append((i ^ key) & 0xff)
    return bytes(output)

def layer4(data):
    iv = os.urandom(256)
    output = iv

    hexencoded = binascii.hexlify(data)
    length_target = (len(hexencoded) + 3) // 4
    padded = hexencoded.ljust(length_target * 4, b'f')

    for i in range(0, len(padded), 4):
        r = rsa_encrypt(padded[i:i+4])
        block = binascii.unhexlify('%.512x' % r)
        output += xor(output[-256:], block)

    return base64.b64encode(output)

flag = layer1(flag)
flag = layer2(flag)
flag = layer3(flag)
flag = layer4(flag)

print(flag.decode('ascii'))
