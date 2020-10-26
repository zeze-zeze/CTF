#!/usr/bin/env python3
import time as time
import random as random
from typing import List as List
from io import BufferedReader as BufferReader
from forbiddenfruit import curse as curse

def pos(data, block=4):
    return [int.from_bytes(data[index:index+block], 'big') for index in range(0, len(data), block)]

def inv(data, block=4):
    return b''.join([i.to_bytes(block, 'big') for i in data])

def _encrypt(vector: List[int], key: List[int]):
    accumlate, delta, mask = 0, 0xFACEB00C, 0xffffffff
    for count in range(32):
        accumlate = accumlate + delta & mask
        vector[0] = vector[0] + ((vector[1] << 4) + key[0] & mask ^ (vector[1] + accumlate) & mask ^ (vector[1] >> 5) + key[1] & mask) & mask
        vector[1] = vector[1] + ((vector[0] << 4) + key[2] & mask ^ (vector[0] + accumlate) & mask ^ (vector[0] >> 5) + key[3] & mask) & mask
    return vector

def encrypt(plain: bytes, private_key: bytes):
    cipher = b''
    for index in range(0, len(plain), 8):
        cipher += inv(_encrypt(pos(plain[index:index+8]), pos(private_key)))
    return cipher

if __name__ == '__main__':
    flag = open('flag', 'rb').read()
    assert len(flag) == 16
    random.seed(int(time.now()))
    private_key = random.getrandombits(128).to_bytes(16, 'big')
    cipher = encrypt(flag, private_key)
    print(f'cipher = {cipher.hex()}')
