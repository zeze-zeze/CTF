#coding=utf-8

import os
import binascii
import struct

def get_true_width():
  misc = open("alengthyissue.png","rb").read()
  for i in range(102400):
    data = misc[12:20] + struct.pack('>i',i)+ misc[24:29]
    crc32 = binascii.crc32(data) & 0xffffffff
    if crc32 == 0x8FA41DF2:
        print i

png = open("alengthyissue.png","rb").read()
count = 0
new_png = ''
for i in range(len(png)):
  if png[i] == '\x0A':
    if count>1:
      new_png += '\x0D\x0A'
    else:
      new_png += '\x0A'
    count += 1
  else:
    new_png += png[i]
open('new.png', 'w').write(new_png)
