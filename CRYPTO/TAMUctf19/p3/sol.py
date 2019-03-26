#! python2
# coding=utf-8
import base64

flag='gigem{'
cipher=base64.b64decode('XUBdTFdScw5XCVRGTglJXEpMSFpOQE5AVVxJBRpLT10aYBpIVwlbCVZATl1WTBpaTkBOQFVcSQdH')

# for a, b in zip(flag, cipher):
#   key+=chr(ord(a)^ord(b))
# print key
key=':)'

flag=''
for c in range(len(cipher)):
  flag+=chr(ord(cipher[c])^ord(key[c%2]))
print flag