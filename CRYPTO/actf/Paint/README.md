# actf crypto Paint
1. 根據題目中的 patent 4200770 知道它是 diffie-hellman
2. 注意其中的 palette 不是質數，所以可以把它分解成很多的 2
3. [這裡](https://crypto.stackexchange.com/questions/30328/why-does-the-modulus-of-diffie-hellman-need-to-be-a-prime/66596)有說明為什麼 diffie-hellman 要使用質數
4. 因此可以從小的數字開始，慢慢往上推，直到 2048
* [script](sol.py)，註解掉的部分是找到 secret 的過程
