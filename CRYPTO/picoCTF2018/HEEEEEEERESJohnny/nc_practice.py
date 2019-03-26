# /usr/bin/python
# coding=utf-8
import socket
import time

def netcat(hostname, port):
  sock=socket.socket(socket.AF_INET, socket.SOCK_STREAM)
  sock.connect((hostname, port))
  #time.sleep(0.5)
  data=sock.recv(102)
  print(data)

  # while True:
  #   data=sock.recv(1024)
  #   print(data)
  #   if data.find('Username')!=-1:
  #     sock.sendall('root')
  #     time.sleep(0.5)
  #   elif data.find('Password')!=-1:
  #     sock.sendall('superman')
  #   else:
  #     break  
  # sock.close()


result=netcat('2018shell3.picoctf.com', 35225)