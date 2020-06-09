trace = open('trace.txt').readlines()

hashset = {}


def getcall():
    calls = []
    for t in trace:
        if 'syscall' in t:
            calls.append(t)
    buf = ''
    with open('syscall.txt', 'w') as f:
        for c in calls:
            f.write("%s" % c)
            buf = c
