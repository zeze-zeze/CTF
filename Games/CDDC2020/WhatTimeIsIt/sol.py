import time
from datetime import datetime
from pwn import *

times = ['2020.10.05 22:39:46', '2020.08.29 05:16:57', '2020.08.12 10:05:39', '2020.09.29 06:36:38', '2020.09.27 00:41:56', '2020.09.30 18:43:24', '2020.08.10 03:54:13', '2020.09.24 00:09:37', '2020.09.16 09:20:23', '2020.08.10 22:06:44', '2020.08.10 23:19:09', '2020.08.13 22:08:52', '1987.04.11 00:43:13']

milis = []
for t in times:
    date = [int(i) for i in t.split(' ')[0].split('.')]
    clock = [int(i) for i in t.split(' ')[1].split(':')]
    mili = datetime(date[0], date[1], date[2], clock[0], clock[1], clock[2])
    milis.append(int(mili.timestamp()))

#milis.sort(reverse = True)

print(milis)

flag = b''

for m in milis:
    flag += unhex(hex(m)[2:])[::-1]
print(flag)
