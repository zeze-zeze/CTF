import string

table = string.lowercase + string.uppercase[:-1] + '0123456789{}_'
table2 = {}
for i in range(len(table)):
  table2['.' * (i / 8 + 1) + '-' + '.' * (i % 8 + 1)] = table[i]

flag = ''
cipher = open('flag.txt').read().split('\n')[1].split(' ')[:-1]

for c in cipher:
  try:
    flag += table2[c]
  except:
    print flag
print flag
