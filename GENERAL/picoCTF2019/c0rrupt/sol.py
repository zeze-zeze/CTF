#coding=utf-8

import os
import binascii
import struct
from pwn import *

misc = open("mystery.png","rb").read()

for i in range(16**4):
    data = misc[0x42:0x46]+ p32(i)[:2] + misc[0x48:0x4f]
    crc32 = binascii.crc32(data)
    if crc32 == 0x495224f0:
        print i
