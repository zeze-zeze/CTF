#coding=utf-8

a1 = 2136772529
a2 = 1234567890

# fibonacii
def what(a):
  if a <= 1:
    return a
  v2 = what(a - 1)
  return v2 + what(a - 2)

fib1 = 1
fib2 = 1
a3 = 0
if not a3:
  for i in range(3, 10000000):
    tmp = fib1 + fib2
    if tmp == a1:
      a3 = a2 * (i-1) + 1
      break
    fib1 = fib2
    fib2 = tmp
    if not (i % 100000):
      print 'after 1%'

print a3
