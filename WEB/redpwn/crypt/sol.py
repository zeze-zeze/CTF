#coding=utf-8

cipher = 'vdDby72W15O2qrnJtqep0cSnsd3HqZzbx7io27C7tZi7lanYx6jPyb2nsczHuMec'.decode('base64')
encoded = ''

for c in cipher:
  encoded += chr((ord(c) - 99) % 128)

print encoded
flag = encoded.decode('base64')
print flag
