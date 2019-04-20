# actf crypto Runes
1. 提示說它用 Paillier cipher
2. 看過 [wiki](https://en.wikipedia.org/wiki/Paillier_cryptosystem)，之後來看看題目
3. 給 3 個參數 c, g, n，c 是 ciphertext，g, n 則是加密法中的參數
4. 先用 [factor machine](https://www.alpertron.com.ar/ECM.HTM)，把 c 解出來之後，照著 wiki 上做就可以了
5. 最後把拿到的 plaintext 轉 hex 後再轉 ascii
