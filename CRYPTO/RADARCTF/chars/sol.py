# python2
# coding=utf-8

data=open('./flag.txt').read().split('\n')

flag=''
i=0
for d in data:
  flag+=d[i]
  i+=1
print flag