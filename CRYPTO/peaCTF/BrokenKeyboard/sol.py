#coding=utf-8

cipher = open('enc.txt').read().split(' ')
flag = ''
for c in cipher:
  flag += chr(int(c))
print flag

# peaCTF{4sc11isc00l}
