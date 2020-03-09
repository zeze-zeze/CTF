from pwn import *

r = remote('138.68.67.161', 20005)
#r = remote('127.0.0.1', 30003)
#r = process('./baby_bear')
msg = r.recvuntil('What do you say?').split('\n')[-3].split('says: ')[1].strip()
print msg

node = [[2, 1, -1], [4, 3, 1], [8, 7, 0], [10, 5, -1], [10, 5, 1], [0, 14, 0], [13, 5, -1], [10, 11, 0], [9, 10, -1], [12, 13, 0], [13, 6, -1], [10, 5, 1], [15, 14, -1], [12, 14, 1], [0, 15, 0], [16, 0, 1], [9, 0, -1]]

check = False
def DFS(index, nowmsg, rand):
    global check
    if check:
        return
    if nowmsg == len(msg):
        check = True
        return rand
    
    ans = []
    for i in range(2):
        if int(msg[nowmsg]) != node[node[index][i]][2] and node[node[index][i]][2] != -1:
            continue
        else:
            if node[node[index][i]][2] != -1:
                ans.append(DFS(node[index][i], nowmsg + 1, rand + str(i)))
            else:
                ans.append(DFS(node[index][i], nowmsg, rand + str(i)))
    for a in ans:
        if a:
            return a

rand = DFS(0, 0, '')
rand += (8 - len(rand) % 8) * '0'
say = ''
for ra in range(0, len(rand), 8):
    say += chr(int(rand[ra : ra + 8][::-1], 2))

print len(say)
r.sendline(say)
print r.recvall(1)
