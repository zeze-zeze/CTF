# coding=utf-8
import os

for i in range(20):
  os.mkdir('./Dir/Files{}'.format(i))
  for j in range(20):
    open('./Dir/Files{}/file{}'.format(i, j), 'w').write('hahaha' * 100)
