#coding=utf-8
from Crypto.Hash import MD5
import sys

target = sys.argv[1]

count = 0
while 1:
  h = MD5.new()
  h.update('kaibro{}'.format(count))
  res = h.hexdigest()[:5]
  if res == target:
    print count
    break
  count += 1
