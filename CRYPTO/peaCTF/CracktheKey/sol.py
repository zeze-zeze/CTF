# coding=utf-8
from string import *

cipher = ''.join(open('enc.txt').read().split('\n'))
count = {}
for c in cipher:
  try:
    count[c] += 1
  except:
    count[c] = 1

freq = 'ETAOINSRHDLUCMFYWGPBVKXQJZ'[:1]
sorted_count = sorted(count.items(), key=lambda d:d[1], reverse=True)

table = {}
for a, b in zip(freq, sorted_count):
  table[b[0]] = a
print table

plain = ''
for c in cipher:
  try:
    plain += lower(table[c])
  except:
    plain += c
open('plain.txt', 'w').write(plain)
print plain