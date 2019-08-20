# pwnkr brain fuck
1. 從內存中可以知道 p 和 tape 的位址在 heap 中，而在他們之前是 libc 函式的 got 位址
2. 利用程式給的 p++, p--, getchar, putchar，可以更改 libc 函式的 got，使得在調用函式時，會跳到我們更改的地方
3. 取得 puts 或是 putchar 的 plt 位址，這是用來透過計算 libc 的相對位址，來取得 system@plt
4. 把 puts 或 plt 改成 main，改成 gets，fgets 改成 system，就大功告成
