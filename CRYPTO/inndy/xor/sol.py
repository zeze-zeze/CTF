#! python2
# coding=utf-8

# > xortool -c 00 ./xor
# > xortool -c 20 ./xor
key='hackmepls'
cipher=open('./xor', 'r').read()

flag=''
for i in range(len(cipher)):
  flag+=chr(ord(cipher[i]) ^ ord(key[i%len(key)]))

for block in flag.split('^@'):
  if 'flag' in block or 'FLAG' in block:
    print block