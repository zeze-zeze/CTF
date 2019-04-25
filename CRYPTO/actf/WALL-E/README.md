# actf crypto WALL-E
1. RSA 題目，發現 e 很小，只是它把明文用 \x00 padding，之後又用 bytes_to_long
2. 可以知道最少會有 84 個 \x00，也就是 pow(2, 8 * 84)，因此只要把 cipher * inverse(pow(2, 8 * 84), n)，就可以得到前 85 位的明文
3. 如果有 86 位明文，就一直 +n，直到它開三次方根為整數為止
* [script](sol.py)
