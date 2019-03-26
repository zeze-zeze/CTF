#! /usr/local/python
# coding=utf-8

# 反組譯結果大概長這樣

def reassemble():
  final=0x46b83fa68d1c45
  your_input=input('')
  var_8=0
  for var_c in range(0x26+1):
    if ord(your_input[var_c])>0x40 and ord(your_input[var_c])<=0x5A:
      # var_8=((var_8+var_8+var_8)*4+var_8)*2+chr(your_input[var_c])-0x41
      var_8=var_8*26+ord(your_input[var_c])-0x41
  if var_8==final:
    print('Congrats!')
  else:
    print('failed')

# 把final逆向推回去~
final=0x46b83fa68d1c45
flag=[]
for i in range(0x26+1):
  flag.append(chr(final%26+0x41))
  final/=26
for i in range(len(flag)):
  print(flag[len(flag)-i-1])