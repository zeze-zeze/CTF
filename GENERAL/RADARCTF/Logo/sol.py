import os
import binascii
import struct


misc = open("logo.png","rb").read()

for i in range(1024):
  data = misc[12:16] + struct.pack('>i',i)+ misc[20:29]
  crc32 = binascii.crc32(data) & 0xffffffff
  if crc32 == 0xB65879B0:
    print i