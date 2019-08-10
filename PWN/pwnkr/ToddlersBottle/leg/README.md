# pwnkr leg
1. 這題沒給 binary，看 C 檔就是要得到 key1~key3 的值相加，就可以得到 flag
2. 看 leg.asm 的 main function，可以注意到 這些 key 就是 每個 function 的 r0
3. key1 的 r0 就是 pc 的值 0x00008cdc + 8 = 0x8ce4
4. key2 的 r0 則要從 0x00008cfc 開始看，r6 被指為 pc，也就是 0x8cfc + 12，在 0x00008d00 使用了 bx 指令，所以進入 thumb 狀態，pc 現在是 r6，也就是 0x8cfc + 12，到了下一行 r3 被指為 pc 的值，也就是 0x8cfc + 16，而這個值最後也就是 r0 = 0x8d0c
5. lr 就是 r14，也就是副函式跳回去的位址，也就是 0x8d80
6. 所以最後答案就是 0x8ce4 + 0x8d0c + 0x8d80 = 108400
