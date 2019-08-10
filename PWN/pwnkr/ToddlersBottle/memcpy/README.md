# pwnkr memcpy
1. 這題考的是字節對齊，其中 rdtsc 是用來測時間的，fast_memcpy() 中的 movntps 是 16 字節對齊，但是 main 中的 malloc 是 8 字節對齊，所以有可能導致字節不能對齊而出錯
2. 用 gdb 跟進去看 fast_memcpy 看位址，確認目前的指標是不是對齊 16 字節，如果是的話，只要之後輸入的大小都是 16 字節對齊就可以過關了;如果不是就全部加 8 把位址弄對齊
3. malloc(size) 分配的位址 = (((size + 4) / 8) + 1) * 8，其中加四的原因是堆塊大小和標誌位

* [參考資料](https://www.cnblogs.com/p4nda/p/7162378.html)
* flag : 1_w4nn4_br34K_th3_m3m0ry_4lignm3nt

