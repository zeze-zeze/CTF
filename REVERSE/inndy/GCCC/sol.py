#coding=utf-8
from z3 import *
from pwn import *

buf = [164, 25, 4, 130, 126, 158, 91, 199, 173, 252, 239, 143, 150, 251, 126, 39, 104, 104, 146, 208, 249, 9, 219, 208, 101, 182, 62, 92, 6, 27, 5, 46]

x = BitVec('x', 64)

solver = Solver()
flag_pre = 'FLAG{'

num = 0
for b in range(len(buf)):
  if b < 5:
    solver.add((buf[b] ^ ((x >> b) & 0xff) ^ num) == ord(flag_pre[b]))
  
  solver.add(
    Or(
      And(
        (buf[b] ^ ((x >> b) & 0xff) ^ num) >= 65,
        (buf[b] ^ ((x >> b) & 0xff) ^ num) <= 90
      ),
      (buf[b] ^ ((x >> b) & 0xff) ^ num) == 123,
      (buf[b] ^ ((x >> b) & 0xff) ^ num) == 125,
      (buf[b] ^ ((x >> b) & 0xff) ^ num) == ord(' ')
    )
  )
  
  if b == 31:
    solver.add((buf[b] ^ ((x >> b) & 0xff)  ^ num) == ord('}')) 

  num ^= buf[b]

solver.check()
answer = solver.model()

payload = str(answer[x])
print payload
def send(payload):
  p = process('./gccc.exe')
  p.recvuntil('Input the key: ')
  p.sendline(payload)
  print p.recvall(1)

send(payload)
