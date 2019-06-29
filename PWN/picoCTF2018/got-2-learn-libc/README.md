# picoCTF 2018 pwn got-2-learn-libc
1. 利用 gdb 的 print &puts 和 print &system 取得他們在 libc 的相對位置
2. 再利用 bufferoverflow 呼叫 system，然後把字串 "/bin/sh" 的位址當作參數傳進去
* 注意本機的 libc 和比賽 server 的 libc 不同，要重算一次
