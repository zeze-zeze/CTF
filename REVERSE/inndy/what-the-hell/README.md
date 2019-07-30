# inndy reverse what-the-hell
1. 這題考的是各種溢位，先用 z3 爆出 a1, a2，之後再列舉費氏數列把 a3 爆出來，最後再跟著 decrypt_flag() 取得 flag
2. 但是我這題解出來的 a1, a2 不是真的解，百般無奈之下偷雞摸狗，因為題目在 decrypt_flag 有用 a3 乘以一個很大的數之後會等於 FLAG，所以就這樣找到 a3 的一個解了，但是最後解出來的 flag 有幾個字>元不太一樣，但是應該可以猜出來
