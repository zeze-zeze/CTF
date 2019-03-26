#! /usr/bin/python
# coding=utf-8

# 你拿到的binary是用遞迴寫(很慢)
def fib(input_):
  if input_>1:
    return fib(input_-1)+fib(input_-2)
  else:
    return input_

# 改成用迴圈自己算
def fib_2(input_):
  a=1
  b=1
  for i in range(0, input_-2):
    c=b
    b=b+a
    a=c
  return b

# 來算答案，但是答案要除以2的32次方，因為eax是32bit，數字太大會裝不下
fib_result=fib_2(0x422)
eax_max=2**32
print(fib_result%eax_max)