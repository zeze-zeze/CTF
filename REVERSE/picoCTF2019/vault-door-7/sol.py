#coding=utf-8

result = [1096770097, 1952395366, 1600270708, 1601398833, 1716808014, 1734304870, 895891557, 1681142832]
flag = ''
for r in result:
    flag += chr((r & 0xff000000) >> 24) + chr((r & 0x00ff0000) >> 16) + chr((r & 0xff00) >> 8) + chr(r & 0xff)
print 'picoCTF{' + flag + '}'
