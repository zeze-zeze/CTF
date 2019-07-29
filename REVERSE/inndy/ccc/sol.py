#coding=utf-8
import binascii

binary = open('./ccc').read()

hashes_start = binary.find('\x6f\x59\x41\xd6')
hashes = []
for i in range(hashes_start, hashes_start + 24 * 4, 4):
  hashes_item = ''
  for j in range(4):
    hashes_item += binary[i+3-j].encode('hex')
  hashes.append(int(hashes_item, 16))
#print hashes

crc32_tab_start = binary.find('\x96\x30\x07\x77')
crc32_tab = [0]
for i in range(crc32_tab_start, crc32_tab_start + 256 * 4, 4):
  crc32_tab_item = ''
  for j in range(4):
    crc32_tab_item += binary[i+3-j].encode('hex')
  crc32_tab.append(int(crc32_tab_item, 16))
#print crc32_tab

#flag = "GM@FxDSD01#hr#gto-'ctw!cqvwb!alsbd!jr!onu|"
flag = ''
for i in range(3, 43, 3):
  init = 0xffffffff 
  for f in flag:
    init = (init >> 8) ^ crc32_tab[(init & 0xff) ^ ord(f)]
  check = False
  
  for j in range(256):
    for k in range(256):
      for l in range(256):
        init_copy = init
        init_copy = (init_copy >> 8) ^ crc32_tab[(init_copy & 0xff) ^ j]
        init_copy = (init_copy >> 8) ^ crc32_tab[(init_copy & 0xff) ^ k]
        init_copy = (init_copy >> 8) ^ crc32_tab[(init_copy & 0xff) ^ l]
        if (0xffffffff ^ init_copy) == hashes[i/3-1]:
        #ans = flag + chr(j) + chr(k) + chr(l) 
        #if (binascii.crc32(ans) & 0xffffffff) == hashes[i/3-1]:
          flag += chr(j)+chr(k)+chr(l)
          print flag
          check = True
          break
      else:
        if check:
          break
    else:
      if check:
        break
  else:
    if not check:
      print 'error'
      exit(0)

