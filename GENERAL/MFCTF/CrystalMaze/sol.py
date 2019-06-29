# coding=utf-8
from pwn import *

route = ['right']
tried = [False, False, False, False]
direc = ['up', 'down', 'left', 'right']
flag = ''
def check(a, b):
  if (a == 'up' and b == 'down') or (a=='down' and b=='up') or (a=='left' and b=='right') or (a=='right' and b=='left'):
    return False
  else: 
    return True

while True:
  r = remote('pre-exam-chals.ais3.org', 10202)
  for road in route:
    r.recvuntil('move:')
    r.sendline(road)
  r.recvuntil('move:')
  for i in range(len(tried)):
    if not tried[i]:
      r.sendline(direc[i])
      res = r.recvline()
      print 'direc : {0}, result : {1}'.format(direc[i], res)
      if 'AIS' in res:
        print res
      elif 'ok' in res:
        if not check(route[-1], direc[i]):
          tried[i]=True
          break
        route.append(direc[i])
        for j in range(len(tried)):
          tried[j] = False
        print route
        break
      elif 'wall' in res:
        tried[i]=True
        break

  if tried[0] and tried[1] and tried[2] and tried[3]:
    print 'four road wrong'
    for i in range(4):
      tried[i] = False
    for i in range(4):
      if route[-1] == direc[i]:
        tried[i] = True
    route = route[:-1]

  r.close()
