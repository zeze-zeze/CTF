l = open('list', 'a')
for i in range(10000000):
    l.write(str(i) + '\n')
