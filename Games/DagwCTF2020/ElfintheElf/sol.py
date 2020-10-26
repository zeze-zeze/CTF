import angr
from pwn import *

def ang(index, addr):
    try:
        pr = angr.Project('./elfs/elf_{}'.format(index))
        state = pr.factory.entry_state()
        sm = pr.factory.simgr(state)
        #addr = [0x401179, 0x40117c]
        #sm.explore(find=addr)
        sm.explore(find=lambda s: "Correct" in s.posix.dumps(1))
        ans = sm.found[0].posix.dumps(0).strip('\x00')
        return ans
    except:
        return ''  

def send(i, j):
    p = process('./elfs/elf_{}'.format(i))
    p.sendline(chr(j))
    res = p.recvall(1)
    return res

'''
for i in range(0, 4408):
    for j in range(256):
        res = send(i, j)
        if 'Correct' in res:
            open('elf', 'a').write(chr(j))
            break
    else:
        open('Noans', 'a').write('{}\n'.format(i))
'''
print(ang(1, 0))
