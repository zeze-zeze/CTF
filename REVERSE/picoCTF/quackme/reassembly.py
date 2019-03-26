#! usr/bin/python
# coding=utf-8
print("You have now entered the Duck Web, and you're in for a honkin' good time.")

var_14=input("Can you figure out my trick?")
var_10=len(var_14)

var_1C=0
var_18=0

pointer_8048858=[0x29, 0x6, 0x16, 0x4F, 0x2B, 0x35, 0x30, 0x1E, 0x51, 0x1B, 0x5B, 0x14, 0x4B, 0x8, 0x5D, 0x2B, 0x56, 0x47, 0x57, 0x50, 0x16, 0x4D, 0x51, 0x51, 0x5D, 0x0]
greetingMessage='You have now entered the Duck Web, and '

while var_18<var_10:
  if pointer_8048858[var_18]^ord(var_14[var_18])==ord(greetingMessage[var_18]):
    var_1c+=1
  if var_1C==0x19:
    print("You are winner!")
  var_18+=1

