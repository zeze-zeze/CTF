from pwn import *
import time
import random

cipher = unhex(open('output.txt', 'rb').read().split(b'=')[1].strip())
print(cipher)

def pos(data, block=4):
    return [int.from_bytes(data[index:index+block], 'big') for index in range(0, len(data), block)]

def inv(data, block=4):
    return b''.join([d.to_bytes(block, 'big') for d in data])

def _decrypt(vector, key):
    delta, mask = 0xFACEB00C, 0xffffffff
    sum_ = 32 * delta & mask
    for i in range(32):
        vector[1] = vector[1] - ((vector[0]<<4) + key[2] & mask ^ (vector[0] + sum_) & mask ^ (vector[0]>>5) + key[3] & mask) & mask
        vector[0] = vector[0] - ((vector[1]<<4) + key[0] & mask ^ (vector[1] + sum_) & mask ^ (vector[1]>>5) + key[1] & mask) & mask
        sum_ = (sum_ - delta) & mask

    return vector

now = int(time.time())
print(now)
count = 0
while True:
    now -= 1
    random.seed(now)
    key = random.getrandbits(128).to_bytes(16, 'big')
    key = pos(key)
    flag = b''
    vector = pos(cipher[:8])
    vector = _decrypt(vector, key)
    flag += inv(vector)
    if b'FLAG' in flag:
        vector = pos(cipher[8:16])
        vector = _decrypt(vector, key)
        flag += inv(vector)
        print(flag, key)
    count += 1
    if not count % 86400:
        print('1 day')
# [3812691656, 3075480634, 3946772273, 1020317001]
