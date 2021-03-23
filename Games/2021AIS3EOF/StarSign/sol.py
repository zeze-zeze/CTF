import requests

table = [[] for i in range(306)]

for j in range(1000):
    print(j)
    res = requests.get('http://eof01.zoolab.org:40000/')
    parse = res.text.strip().split('<span class="cipher">')[1].strip().split('</span></td>')[0].strip().split('<br>')[:-1]
    for i in range(len(parse)):
        parse[i] = parse[i].strip()
    parse = ''.join(parse)
    parse = parse.replace('&lt;', '<')
    parse = parse.replace('&gt;', '>')
    parse = parse.replace('&quot;', '"')
    parse = parse.replace('&amp;', '&')
    #print(len(parse), parse)
    assert(len(parse) == 306)


    for i in range(len(parse)):
        table[i].append(parse[i])
        table[i] = list(set(table[i]))

    #print(table)

log = ''
for t in table:
    log += ''.join(t) + '\n'
print(log)
open('log', 'w').write(log)
