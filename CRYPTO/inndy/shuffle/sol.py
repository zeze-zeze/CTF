#! python2
# coding=utf-8

shuffle=open('./shuffle/plain.txt', 'r').read()
map_shuffle=open('./shuffle/crypted.txt', 'r').read()

shuffle_hex=[0]*256
map_shuffle_hex=[0]*256

for i in shuffle:
  shuffle_hex[ord(i)]+=1

for i in map_shuffle:
  map_shuffle_hex[ord(i)]+=1

substitution_table={}

for i in range(256):
  substitution_table[chr(i)]=chr(shuffle_hex.index(map_shuffle_hex[i]))

plain_text=''

for i in map_shuffle:
  plain_text+=substitution_table[i]

w=open('./plaintext.txt', 'w').write(plain_text)

print plain_text