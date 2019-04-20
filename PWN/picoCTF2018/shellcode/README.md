# picoCTF pwn shellcode
1. 裡面有一句 ((void( * )())buf)(); ，這句是要把 buf 直接當作 assembly 來執行
2. 所以可以用 python 中 pwntools 裡的 shellcraft.sh() 和 asm 的 assembly
3. interactive() 之後 cat flag.txt 就拿到 flag 了
* [script](./sol.py)
