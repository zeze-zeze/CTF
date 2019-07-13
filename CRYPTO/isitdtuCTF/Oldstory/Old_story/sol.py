# coding=utf-8
import base64
import math

cipher = [524288, 4194304, 16384, 1024, 4194304, 32, 262144, 2097152, 4194304, 16777216, 70368744177664, 2251799813685248, 8192, 8388608, 8192, 4503599627370496, 16777216, 36028797018963968, 16384, 2199023255552, 67108864, 1048576, 2097152, 18014398509481984, 33554432, 68719476736, 4, 17179869184, 536870912, 549755813888, 262144, 4294967296, 16384, 128, 288230376151711744, 137438953472, 16777216, 36028797018963968, 1024, 4503599627370496, 16384, 68719476736, 262144, 4611686018427387904]
table = {}

for i in range(100):
  table[pow(2, i)] = i

#print table

cipher_res = []
for c in cipher:
  cipher_res.append(table[c]-1)

print cipher_res

b64_table = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

encoded = ''
for c in cipher_res:
  encoded += b64_table[c]
print encoded
print encoded.decode('base64')


print [b64_table[int(math.log(t,2)-1)] for t in cipher]
print ''.join([b64_table[int(math.log(t,2)-1)] for t in cipher]).decode('base64')

#for f, c in zip(flag, cipher_res):
#  print chr(ord(f) ^ c)
