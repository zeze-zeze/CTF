# TCMA CTF 2019
## RSAaaay
### 主要觀念:RSA
1. 給(n, e)，要解密文，所以先把 n 因式分解，最後把密文解密就好
2. 解出來的第一個是三位數，接下來不是五位數就是六位數，但是仔細一看會發現是兩個 ascii 組合成的，所以轉回來就好
* (實作方法)[sol.py]

```
flag=gigem{Savage_Six_Flying_Tigers}
```