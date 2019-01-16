# coding=utf-8

import requests
import sys

reload(sys)
sys.setdefaultencoding('utf-8')

r=requests.post('http://2018shell3.picoctf.com:18342/button2.php')
text=r.content.decode('big5')
print text