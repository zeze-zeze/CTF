#! python2
# coding=utf-8
import requests

not_flags=[[0]*256 for i in range(50)]
flag_check=False

while not flag_check:
  r=requests.get('https://hackme.inndy.tw/otp/?issue_otp=1')
  ciphers=r.content.decode('utf-8').split('\n')

  for cipher in ciphers:
    for c in range(len(cipher)/2):
      not_flags[c][int(cipher[2*c:2*c+2], 16)]+=1

  flag_check=True
  for not_flag in not_flags:
    if not_flag.count(0)!=1:
      flag_check=False
      break

flag=''
for not_flag in not_flags:
  flag+=chr(not_flag.index(0))

print flag