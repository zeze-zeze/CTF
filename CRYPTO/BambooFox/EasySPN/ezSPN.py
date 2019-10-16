import random
import types
import os

BLOCKSIZE = 6
ROUNDS = 2

# convert str to bit string
def s2b(s):
    if type(s) == bytes :
        s = ''.join(chr(b) for b in s)
    return list(map(int,(''.join( bin(ord(c))[2:].rjust(8,'0') for c in s))))

# convert bit string to str
def b2s(b):
    b = ''.join(map(str,b))
    if len(b)%8 != 0 :
        b = b.rjust((len(b)//8+1) * 8,'0')
    return ''.join(chr(int(b[i:i+8],2)) for i in range(0,len(b),8))

# xor two bit strings.
def xorb(a,b):
    assert type(a) == type(b), "The input must be the bit array."
    assert len(a) == len(b), "Make sure these string are same length."
    return [a[i] ^ b[i] for i in range(len(a))]


def genkey():
    return os.urandom(6)

key = genkey()
assert len(key) == BLOCKSIZE

def keySchedule(input,d): 
    Lfirst = input[0 : d] 
    Lsecond = input[d :] 
    return Lsecond + Lfirst

def encrypt(pt, key, rounds):
    res = s2b(pt)
    for r in range(rounds):
        tmp = []
        bits = xorb(res, s2b( keySchedule(key,r) ))
        for i in range(0,len(bits),6):
            si = sbox[ord(b2s(bits[i:i+6]))]
            tmp.extend(map(int,bin(si)[2:].rjust(6,'0')) )
        res = tmp.copy()
        if r != rounds-1 :
            for i in range(48):
                res[i] = tmp[pbox[i]]
    res = xorb( res, s2b(keySchedule(key,rounds) ))
    return b2s(res)
    
sbox = [41, 43, 40, 44, 20, 17, 34, 19, 56, 4, 9, 36, 48, 53, 23, 3, 0, 62, 39, 26, 38, 15, 57, 1, 18, 31, 21, 33, 61, 47, 22, 7, 11, 27, 8, 10, 35, 55, 28, 13, 37, 54, 2, 24, 30, 52, 6, 63, 12, 59, 42, 29, 32, 25, 46, 45, 50, 5, 60, 49, 51, 16, 58, 14]

pbox = [
    0,  8, 16, 24, 32, 40,
    1,  9, 17, 25, 33, 41,
    2, 10, 18, 26, 34, 42,
    3, 11, 19, 27, 35, 43,
    4, 12, 20, 28, 36, 44, 
    5, 13, 21, 29, 37, 45, 
    6, 14, 22, 30, 38, 46,
    7, 15, 23, 31, 39, 47
]

def calProb(bias):
    prob = 0.5
    for b in bias :
        prob += pow(2,len(bias)-1) * b
    return prob-0.5

f = open('ciphers','w')
pairs = []
for i in range(1<<13):    
    pt = os.urandom(BLOCKSIZE)
    ct = encrypt(pt, key, ROUNDS)
    pairs.append((pt,ct))
f.write(str(pairs))
f.close()

print('BambooFox{%s}' % key.hex())