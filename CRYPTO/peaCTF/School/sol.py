# coding=utf-8
from string import *

high_res = 'WCGPSUHRAQYKFDLZOJNXMVEBTI'
low_res = lower(high_res)
table = {}
for alp, r in zip(ascii_lowercase, low_res):
  table[r] = alp

for alp, r in zip(ascii_uppercase, high_res):
  table[r] = alp

table['{'] = '{'
table['}'] = '}'

cipher = 'zswGXU{ljwdhsqmags}'
flag = ''
for c in cipher:
  flag += table[c]
print flag

# peaCTF{orangejuice}