1. 把 seed 蓋成 __libc_start_main() plt 位址
2. 兩次迴圈把 puts 的 plt 改成 casino 位址
3. 在第二次輸入正確的樂透後就會跳回 casino
4. 再來的兩次迴圈把 srand 改成 printf，這樣就可以把 __libc_start_main() 印出來
5. 用兩次迴圈把 seed 改成 /bin/sh\0 的位址(在 libc 中)
6. 再用兩次迴圈把 srand 改成 system
7. 最後跳回 casino 執行 system 拿到 shell
