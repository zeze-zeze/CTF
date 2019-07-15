#coding=utf-8
from PIL import Image
import numpy as np

flag_len = 8

image = Image.open('./out.png')
rgb = image.convert('RGB')
arr = []
for i in range(image.width):
  for j in range(image.height):
    arr.append(rgb.getpixel((j, i)))

flag = ''
for i in range(100):
  bits = ''
  for j in range(8):
    index = 256 * i + 32 * j
    bits = bin(((arr[index][0] ^ arr[index][1]) & 1) ^ arr[index][2])[-1] + bits
  flag += chr(int(bits, 2))
print flag



