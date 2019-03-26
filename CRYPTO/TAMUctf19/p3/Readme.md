# TAMU CTF 2019
## :)
### 主要觀念:xor
1. 把這串密文 base64decode 後會得到亂碼，既然沒有其他條件，就要猜是 xor (可惡這次沒猜到)
2. 那 xor 的 key 是什麼? 已知 flag 的開頭是 gigem{ ，所以憑這樣就可以知道 key=:)
3. 之後把其他也 decrypt 就是 flag 了
* [實作方法](sol.py)