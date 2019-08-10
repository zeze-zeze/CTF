# pwnkr uaf
1. 這題要有 [vfptr 和 use after free](https://zhuanlan.zhihu.com/p/34102227) 的先備知識才能解
2. 簡單來說，用 objdump 在 main 中看到 man 和 woman 被創出來，然後可以透過 gdb 去追，看內存中的東西，在用 x/10 $rbx 之後噴出來的東西就是 m 和 w 的內存，第一個就是他們的 vfptr，它指著 vtable，vtable 存著父類別的函數位址和本身的函數位址，接著是父類別的變數，最後才是本身的變數
3. 用 gdb 繼續追 vtable，可以看到 give_shell() 在 introduce() 前面
4. 所以這題就是要讓 m->introduce():vfptr+8 的位址改成 give_shell():vfptr 的位址，而兩個位址的距離就只有 8 bytes，因此在寫入 data 的時候，就填入原本的 vfptr - 8，這樣呼叫 introduce 的時候就會變成 give_shell()
5. 要注意兩點，第一個是 data 的大小要跟 m 差不多，不然分配不到相同的位址;第二個是我們需要分配兩次 data，因為我們是先 delete m 才 delete w，在分配內存的時候會先分配到後釋放的 w

* 那為什麼不能乾脆改 w 就好? 用 gdb 追下去發現， delete 之後，原本的 vfptr 就變成 0x00 了(但是變數都還在)，所以在跑 m->introduce() 的時候就會崩潰
