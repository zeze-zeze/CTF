#coding=utf-8
# https://en.wikipedia.org/wiki/Bacon%27s_cipher

cipher = '011100010000000000101001000101{00100001100011010100000000010100101010100010010001}'

spl = ''
for c in cipher:
  if c == '0' or c == '1':
    spl += c
  if len(spl) == 5:
    print spl
    spl = ''

# peaCTF{eggwaffles}