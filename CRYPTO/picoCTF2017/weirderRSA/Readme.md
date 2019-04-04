# picoCTF 2017
## wierder RSA
### 主要觀念 : RSA
* dp=d mod (p-1)
* 因為 d x e=1 mod (p-1)x(q-1)，所以 d x e=1 mod (p-1)
* ((d mod (p-1)) x (e mod (p-1))) mod (p-1)=1 mod (p-1)
1. 前三項可以導出 : dp x e=k(p-1)+1
2. 又因為 dp < (p-1)，所以 e < k
3. 所以只要遍歷 k，把 p 找出來，就可以分解 n 了
* [實作方法](sol.py)

