#! /usr/bin/python
# coding=utf-8

edi=0x186B5

# 題目給你的程式用了遞迴
def calc(edi):
  if edi>4:
    # ebx=calc(edi-1)
    # ebx-=calc(edi-2)
    # r12d=calc(edi-3)
    # r12d-=calc(edi-4)
    # ebx+=r12d
    # eax=calc(edi-5)*0x1234
    # eax+=ebx
    # return eax
    return calc(edi-1)-calc(edi-2)+calc(edi-3)-calc(edi-4)+calc(edi-5)*0x1234
  else:
    # eax=edi
    # eax*=edi
    # eax+=0x2345
    # return eax
    return edi**2+0x2345

# 自己改成迴圈
def calc_2(edi):
  a=[0x2345, 1+0x2345, 4+0x2345, 9+0x2345, 16+0x2345, 0]
  for i in range(edi-4):
    a[5]=a[4]-a[3]+a[2]-a[1]+a[0]*0x1234
    for j in range(5):
      a[j]=a[j+1]
  return a[5]
    
eax_max=2**32
print(calc_2(edi)%eax_max)