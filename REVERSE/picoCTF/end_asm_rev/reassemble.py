#! /usr/bin/python
# coding=utf-8
ebp0x8=0xfac0f685
ebp0xc=0xe0911505
ebp0x10=0xaee1f319

# mov     eax,0x27
# xor     al,al
eax=0x27
al=eax%256
al=al^al

# mov     ah,BYTE PTR [ebp+0xb]
# sal     ax,0x10
ah=0x85
ax=ah<<8+al
ax=(ax<<0x10)%(2**16)

# sub     al,BYTE PTR [ebp+0xc]
# add     ah,BYTE PTR [ebp+0xf]
al=-0x05+2**8
ah=0xe0
ax+=(ah<<8)+al

# xor     ax,WORD PTR [ebp+0x12]
ax=ax^0xaee1
print(hex(ax))