#! /usr/bin/python
# coding=utf-8

def leftRotate(n, d):
  return ((n<<d)|(n>>8-d))%256

def rightRotate(n, d):
  return ((n>>d)|(n<<(8-d)))%256


# print("We're moving along swimmingly. Is this one too fowl for you")
# var_10=input("Enter text to encrypt:")
quack=[0x11, 0x80, 0x20, 0xE0, 0x22, 0x53, 0x72, 0xA1, 0x01, 0x41, 0x55, 0x20, 0xA0, 0xC0, 0x25, 0xE3, 0x35, 0x40, 0x55, 0x30, 0x85, 0x55, 0x70, 0x20, 0xC1]
for i in range(len(quack)):
  quack[i]=chr(rightRotate(leftRotate(quack[i], 8)^0x16, 4))

for i in range(len(quack)):
  print(quack[i])