trace = open('trace.txt').readlines()
collected = {}
stack = []
for t in trace:
    if ' call' in t:
        addr = t.split(' call')
