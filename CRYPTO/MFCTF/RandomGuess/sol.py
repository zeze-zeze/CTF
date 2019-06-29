# coding=utf-8
from pwn import *
from z3 import *

r = remote('pre-exam-chals.ais3.org', 10200)
nums = r.recvlines(4)[2]
nums = nums.split(' ')[2:]

for num in range(len(nums)):
  if ',' in nums[num]:
    nums[num] = nums[num][:-1]
  nums[num] = int(nums[num])
print nums

a, b, c = Ints('a b c')
solver = Solver()

for i in range(len(nums)-3, len(nums)):
  solver.add((a * nums[i-1] + b )% c  == nums[i])
solver.add(c != 0)

#solver.add(a+b % c==15)
#solver.add(c!=0)

solver.check()
try:
  answer = solver.model()
  print answer
  a = int(str(answer[a]))
  b = int(str(answer[b]))
  c = int(str(answer[c]))
except:
  print 'not found'

print 'a={0}, b={1}, c={2}'.format(a, b, c)

for i in range(100):
  nums.append((a * nums[i-1] + b )% c)
  r.sendline(str(nums[-1]))
  print r.recvline()
