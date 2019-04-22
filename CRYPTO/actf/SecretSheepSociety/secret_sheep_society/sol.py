# python2
# coding=utf-8
import base64

cipher = base64.b64decode('rzCilpnlktX6RS55RLoKMzxsPeZVmUnNkamuFhSy9XSwvlZqoOgh1DaoKdrYze28')
BLOCK_SIZE=16

'''
iviviviviviviviv

{"admin": false,
 "handle": ""}
'''

new_cipher=''
old='false'
new=' true'
i=0
for c in cipher:
  if i>=10 and i<=13:
    new_cipher += chr(ord(old[i-10]) ^ ord(new[i-10]) ^ ord(c))
  else:
    new_cipher += c
  i+=1


print base64.b64encode(new_cipher)
