# TAMU CTF 2019
## Holey Knapsack
### 主要觀念:Merkle–Hellman_knapsack_cryptosystem
1. 只有 public key，基本上是很難猜到 private key，但是可以猜 flag 得值都在 ascii 範圍內
2. 因此，可以暴力破解，把 0~255 每個都加密一次，並把結果做成一張 table
3. 最後，從 ciphertext 對著這張窮舉過的 table 就可以解出明文
* ps. 它把每個字母 encrypt 之後，轉成 hex 就把字串加在一起了
* (Merkle–Hellman_knapsack_cryptosystem)[https://en.wikipedia.org/wiki/Merkle%E2%80%93Hellman_knapsack_cryptosystem]，加密原理就是把 8 個數字當作 private key(要 sort 過，不然解密會出錯)，還有兩個數字分別為 p 和 m。public key 就是 private key 的8個數字各乘以 p 然後 mod m，要加密的話就是把要加密的 byte 轉成 binary，如果那一位是 1，就加上 public key 相對的數字，0 就不加。解密的話，就先把它乘以 p 對 m 的反元素，然後從最大的 private key 開始，如果減的了，表示明文的 byte 包含那個 bit，以此類推。
* (實作方法)[sol.py]

```
flag=gig_em{merkle-hellman-knapsack}
```