import math 
import time

binary = open('./what-the-hell').read()
junk_data = binary[binary.find('\x09\x23\x8c\xb9\x2f\x19\x8d') : binary.find('\x09\x23\x8c\xb9\x2f\x19\x8d') + 4096]

list=[1,1]

def what(a1):
  num = list[-1] + list[-2]
  list.append(num)
  return num


def calc_key(x,y):
  i = 3
  while i <= 9999998 :
    if what(i) & 0xffffffff == x :
      break
    i += 1
  print 'key: %d'%(i * y + 1)
  return i * y +1

def decrypt_flag(a1,a2,a3):
  v5 = 4
  flag = "FLAG"
  while a2:
    v3 = v5
    v5 += 1
    flag += chr( (ord(junk_data[a1 & 0xfff]) ^ a2) & 0x7f )
    a1 *= 77777
    a2 = a3 ^ (a2 >> 1)
    a3 >>= 1
  return flag

#x = 2136772529
#y = 1234567890
x = 4284256177
y = 1234567890
key = calc_key(x,y) & 0xffffffff
print decrypt_flag(x,y,key)
