#coding=utf-8
import tarfile
import os

count = 1000
while count:
  tarfile.open('{}.tar'.format(count)).extractall()
  os.remove('./{}.tar'.format(count))
  print count
  count -= 1
