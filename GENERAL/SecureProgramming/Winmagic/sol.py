#coding=utf-8

v54 = 'Do_you_know_why_my_teammate_Orange_is_so_angry?????'
v2_51 = [2, 35, 30, 62, 20, 34, 54, 5, 42, 13, 16, 0, 30, 27, 38, 41, 8, 11, 38, 43, 12, 12, 29, 2, 19, 0, 4, 49, 59, 45, 8, 0, 56, 18, 54, 7, 23, 48, 4, 28, 0, 18, 11, 4, 7, 11, 86, 75, 70, 66]
flag = ''

for v1, v2 in zip(v54, v2_51):
    flag += chr(ord(v1) ^ v2)
print flag
