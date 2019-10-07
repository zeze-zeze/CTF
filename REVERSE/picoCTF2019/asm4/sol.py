#coding=utf-8

arg = 'picoCTF_75806\x00'
ebp_0x10 = 0x276
ebp_0xc = 0x0


edx = ebp_0xc
eax = arg[edx]
while eax != '\x00':
  ebp_0xc += 1
  edx = ebp_0xc
  eax = arg[edx]

ebp_0x8 = 0x1

eax = ebp_0xc
eax -= 1
while ebp_0x8 < eax:
  edx = ebp_0x8
  eax = arg[edx]
  edx = eax
  eax = ebp_0x8
  ecx = eax - 0x1
  eax = arg[ecx]
  edx = ord(edx) - ord(eax)
  eax = edx
  eax = ebp_0x10
  ebx = edx + eax * 1
  eax = ebp_0x8
  edx = eax + 0x1
  eax = arg[edx]
  edx = eax
  ecx = ebp_0x8
  eax = arg[ecx]
  edx = ord(edx) - ord(eax)
  eax = edx
  eax = eax + ebx
  ebp_0x10 = eax
  ebp_0x8 += 0x1
  eax = ebp_0xc
  eax -= 1

eax = ebp_0x10
print hex(eax)
