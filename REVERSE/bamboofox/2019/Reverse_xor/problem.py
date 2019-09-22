#coding=utf-8

flag = open('flag', 'r').read()
print len(flag)
key = 'riojhoeijglsdijgjoijweoiiowejroij'[:len(flag)]
keys = []
for k in key:
  keys += [ord(k)]
print keys
cipher = []

for f, k in zip(flag, key):
  cipher += [ord(f) ^ ord(k)]
print cipher
