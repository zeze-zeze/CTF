#python2
# coding=utf-8

public = open('pub.key').read().split('\n')[1:-1]
public = public[0]+public[1]+public[2]
cipher = open('enc.message').read()

print len(cipher)
print len(public)
