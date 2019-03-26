# picoCTF 2017
## SmallSign
### 主要觀念:RSA-signature
1. RSA 的 signature 就是原文的 d 次方，signature 是用來驗證這是不是從某個人傳的。signature 產生後會放在原文後面，傳給別人，當別人收到之後，只要把拿到的原文用 e 加密，就可以知道有沒有被竄改過
2. 題目給我們產生任何數字的signature，但是只有 60 秒的時，最後從 2**32 中抽一個數字出來，要求它的 signature，想也知道只有 60 不可能得到 2**32 這麼多的 signature，因此能求多少就求多少，只是只要求質數的就好
3. 拿到 random 的數字之後，對它做質因數分解，然後把那些質因數的 signature 相乘後取 n 餘數，就是 random 的 signature 了

* ps.因為能取得的質數的 signature 有限，所以可能要多試幾次讓 random 的質因數是我們有的

[實作方法](https://github.com/HardworkingSnowman/CTF/blob/master/CRYPTO/picoCTF2017/SmallSign/sol.py)

```
flag=c4061d2c3315e76970f4c70e26a459cf
```