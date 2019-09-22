#coding=utf-8
import string
import random

capital = []
flag = open('flag', 'r').read()
for f in range(len(flag)):
  if flag[f] in string.uppercase:
    capital.append(f)
#print capital
flag = flag.lower()

cmp_str_rev = ['' for i in range(len(flag))]
for f in range(len(flag)):
  for s in string.lowercase:
    if flag[f] != s:
      cmp_str_rev[f] += s
    else:
      cmp_str_rev[f] += '_'

for s in range(len(cmp_str_rev)):
  cmp_str_rev[s] = list(cmp_str_rev[s])
  random.shuffle(cmp_str_rev[s])
  cmp_str_rev[s] = ''.join(cmp_str_rev[s])

for i in range(26):
  cmp_str = ''
  for s in cmp_str_rev:
    cmp_str += s[i]
  print '\'{}\','.format(cmp_str)
