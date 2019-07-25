# coding=utf-8
from string import *

cipher = ''.join(open('enc.txt').read().split('\n'))

# 3
count3 = {}
for c in range(0, len(cipher)-2):
  try:
    count3[cipher[c:c+3]] += 1
  except:
    count3[cipher[c:c+3]] = 1
sorted_count3 = sorted(count3.items(), key=lambda d:d[1], reverse=True)
print sorted_count3

# 2
count2 = {}
for c in range(0, len(cipher)-1):
  try:
    count2[cipher[c:c+2]] += 1
  except:
    count2[cipher[c:c+2]] = 1
sorted_count2 = sorted(count2.items(), key=lambda d:d[1], reverse=True)
print sorted_count2

plain2 = ''
c = 0
while c < len(cipher)-1:
  if cipher[c:c+2] == sorted_count2[0][0]:
    plain2 += 'th'
    c += 2
  else:
    plain2 += cipher[c]
    c += 1
#print plain2

# 1
count = {}
for c in cipher:
  try:
    count[c] += 1
  except:
    count[c] = 1

freq = 'ETAOINSRHDLUCMFYWGPBVKXQJZ'
sorted_count = sorted(count.items(), key=lambda d:d[1], reverse=True)
print sorted_count

table = {}
for a, b in zip(freq, sorted_count):
  table[b[0]] = a

plain = ''
for c in cipher:
  try:
    plain += lower(table[c])
  except:
    plain += c
#open('plain.txt', 'w').write(plain)
#print plain

real_plain = ''
#real_table = {'G':'t','L':'h','E':'e'    ,'S':'i','I':'n'}
for c in cipher:
  try:
    real_plain += real_table[c]
  except:
    real_plain += c
print real_plain