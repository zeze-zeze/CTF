# picoCTF 2017
## HashChain
### 主要觀念: hash chain, 暴力搜尋法
1. 先看 hcexample.py 可以知道，這題想考的東西是 hash chain，hash chain 就是每個被把 seed 放進 md5 中攪爛之後，會得到一個 hash，再拿這個 hash 放進 md5 中，如此循環。同個 seed 會有相同的 hash chain。
2. 所以現在 nc shell2017.picoctf.com 5715，有兩個選項 r/f ，先看 r 的部分，它說 ID 是 9411 時，hash chain 的 seed 是 ...，然後現在要我們求出什麼東西用 md5 hash 過後會變成第三行的那個 hash。既然它都說 seed 是 ... 了，那我們就把 seed 繼續往下做 md5 hash 吧。我們就從 seed 開始，一直做 hash，直到等於它要求的那個 hash，再提出這個 hash 的前一項就對了。但是得到的結果沒有 flag，只有 "Yep, you are validated!"。
[實作方法](https://github.com/HardworkingSnowman/CTF/blob/master/CRYPTO/picoCTF2017/HashChain/sol.py)
3. 再來選選看 f，它說現在的 ID 是 XXXX，要求出第三行 hash 的前一個 hash，但是沒有 seed 怎麼辦?想到剛剛選 r 的時候不就有給 seed 嗎，所以就一直選 r，並把拿到的 seed 記錄下來，看起來最大只有到四位數，所以最多只要記錄 10000 次。取完 seed 後，再選 f，這時就會有它要求的 ID 的 seed，再用前面求 hash chain 的方法，找到它要求的 hash 的前一個 hash 就拿到 flag 了。
[實作方法](https://github.com/HardworkingSnowman/CTF/blob/master/CRYPTO/picoCTF2017/HashChain/sol2.py)
4. ps. 其實也不一定要把 seed 取完，大概取個一兩千，只要多試幾次 f，就很容易命中你有的 ID seed 了。

```
flag=b41769e77d350c3d5655eab553221f0c
```