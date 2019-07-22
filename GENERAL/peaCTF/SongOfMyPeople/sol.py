#coding=utf-8

import os
import binascii
import struct


misc = open("alengthyissue.png","rb").read()

for i in range(102400):
  data = misc[12:20] + struct.pack('>i',i)+ misc[24:29]
  crc32 = binascii.crc32(data) & 0xffffffff
  if crc32 == 0x8FA41DF2:
      print i