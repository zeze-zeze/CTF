# coding=utf-8
pointer8048858=[0x29, 0x6, 0x16, 0x4F, 0x2B, 0x35, 0x30, 0x1E, 0x51, 0x1B, 0x5B, 0x14, 0x4B, 0x8, 0x5D, 0x2B, 0x56, 0x47, 0x57, 0x50, 0x16, 0x4D, 0x51, 0x51, 0x5D, 0x0]
greetingMessage_str='You have now entered the Duck Web, and '
greetingMessage=[]
for i in range(len(greetingMessage_str)):
  greetingMessage.append(ord(greetingMessage_str[i]))

answer=[]
for i in range(len(pointer8048858)):
  answer.append(pointer8048858[i]^greetingMessage[i])

answer_message=''
for i in range(len(answer)):
  answer_message+=chr(answer[i])

print(answer_message)

