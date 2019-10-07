#coding=utf-8
import os

for i in range(30):
  open('file{}'.format(i), 'w').write('Not the flag')
