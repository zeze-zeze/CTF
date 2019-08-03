#coding=utf-8
from pwn import *

r = remote('pwnable.kr', 9007)
res = r.recv(1500)
time.sleep(3)

for _ in range(100):
  res = r.recv(100, 3)
  ques = re.search('N=\d+ C=\d+', res).group()
  print ques
  N = int(ques.split(' ')[0].split('=')[1])
  C = int(ques.split(' ')[1].split('=')[1])
  minn = 0
  maxx = N - 1
  while C:
    mid = (minn + maxx) / 2
    payload = ''
    for i in range(minn, mid + 1):
      payload += str(i) + ' '
    r.sendline(payload)
    res = r.recv(20)
    if int(res.strip()[-1]):
      maxx = mid
    else:
      minn = mid + 1
    print 'minn:{}, maxx:{}'.format(minn, maxx)
    C -= 1
  r.sendline(str(minn))
  res = r.recv(100)
  print res
print r.recvall(1)
