# RADAR RSA
1. 看到很小的 n 就拿來 [這裡](https://www.alpertron.com.ar/ECM.HTM) 分解，接著把 phi, d 求出來
2. 把 RSA.txt 中的密文全部用 d 解出來
3. 轉成 ascii 之後，用 base32 deocde，最後再把拿到的東西轉成 ascii 就是 flag 了