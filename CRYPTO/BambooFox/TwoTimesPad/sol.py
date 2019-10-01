#coding=utf-8

c1 = '9fc8f1b0aaa54c9984b338cb9b323f92486da17cdf'.decode('hex')
c2 = '86c1f6baaab856d48ffc3c8a8b7a33c10e76a57a9a'.decode('hex')
print len(c1)
xor_m1_m2 = ''
for i in range(len(c1)):
  xor_m1_m2 += chr(ord(c1[i]) ^ ord(c2[i]))

m1 = ''
for i, j in zip('many time pad is weak', xor_m1_m2):
  m1 += chr(ord(i) ^ ord(j))
print m1

m1 = 'many time pad is weak'
m2 = 'this is not the flag.'
key = ''
for i in range(len(m1)):
  key += chr(ord(m1[i]) ^ ord(c1[i]))

print key.encode('hex') 

