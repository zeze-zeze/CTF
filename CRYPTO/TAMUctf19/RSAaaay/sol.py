#! python2
# coding=utf-8
from Crypto.Util import number

n=2531257
e=43
p=509
q=4973
phi=(p-1)*(q-1)
d=number.inverse(e, phi)

cipher=[906851, 991083, 1780304, 2380434, 438490, 356019, 921472, 822283, 817856, 556932, 2102538, 2501908, 2211404, 991083, 1562919, 38268]
flag_ascii=[]

for c in cipher:
  flag_ascii.append(str(pow(c, d, n)))

flag='g'
for f in flag_ascii[1:]:
  print f
  if f[0]=='1':
    flag+=chr(int(f[:3]))+chr(int(f[3:]))
  else:
    flag+=chr(int(f[:2]))+chr(int(f[2:]))

print(flag)