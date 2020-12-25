import gdb

def rev_sub_25CA(c):
    gdb.execute('disable')
    gdb.execute('file rev_secret_secret.o')
    gdb.execute('starti')
    vmmap = gdb.execute('vmmap', to_string=True).split('\n')
    base = int(vmmap[1].split()[0].strip()[5:], 16)
    print('base: ', hex(base))

    gdb.execute('b *{}'.format(hex(base + 0x2c5a)))
    gdb.execute('c')
    target = int(gdb.execute('print $rdi', to_string=True).strip().split()[2][2:], 16)
    target = int(gdb.execute('x/2gx {}'.format(target), to_string=True).strip().split()[1][2:], 16)
    change = hex(int(gdb.execute('print $rdx', to_string=True).strip().split()[2][2:], 16))
    change = int(gdb.execute('x/2gx {}'.format(change), to_string=True).strip().split()[1][2:], 16)
    gdb.execute('set *{} = {}'.format(hex(change), c))
    print('target', hex(target))
    print('change', hex(change))

    gdb.execute('b *{}'.format(hex(base + 0x2d6b)))
    gdb.execute('c')
    result = gdb.execute('x/2gx {}'.format(target), to_string=True).strip().split()[1]
    print(result)
    return result

#rev_sub_25CA(ord('w'))
table = {}
for i in range(ord('a'), ord('z') + 1):
    table[chr(i)] = rev_sub_25CA(i)
print(table)
