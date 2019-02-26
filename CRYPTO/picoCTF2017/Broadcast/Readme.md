# picoCTF 2017
## Hastad's Broadcast Attack
### 主要觀念:RSA-Hastad's Broadcast Attack
1. 看到 e=3，又給了 三個密文 c1,c2,c3 和 n1,n2,n3，可以想到這是在做 RSA 加密，分別把訊息傳送給三個人
2. 可以把它們寫成這個聯立式( m = 原文):
* c1 = m^3 mod n1
* c2 = m^3 mod n2
* c3 = m^3 mod n3
3. 因為 n1,n2,n3 分別互質(如果不互質的話，可以透過最大公因數分解)，所以一定存在一個 c :
* c = c1 mod n1
* c = c2 mod n2
* c = c3 mod n3
* [Hashtad's Broadcast Attack 教學](https://www.coursera.org/lecture/number-theory-cryptography/hastads-broadcast-attack-fyPIB)
4. c 可以透過中國餘數定理算出來，其中通過中國餘數定理可知: c = m^3 mod (n1*n2*n3)，而且因為 m < n1, m < n2, m < n3，所以 0 <= c = m^3 < n1 * n2 *n3，也就是說 c = m^3，所以只要用中國餘數定理算出 c，再開三次方根就會是原文 m。
5. 最後應題目要求，轉成 hex 後再轉成 ascii

[實作方法](https://github.com/HardworkingSnowman/CTF/blob/master/CRYPTO/picoCTF2017/Broadcast/sol.py)

```
flag=broadcast_with_small_e_is_killer_76217934106
```