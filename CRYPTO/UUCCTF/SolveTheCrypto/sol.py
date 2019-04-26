#python2
# coding=utf-8

public = open('pub.key').read().split('\n')[1:-1]
cipher = open('enc.message').read()

print( len(cipher))
