# pwnkr unlink
1. 用 heap overflow 可以蓋掉 B->fd, B->bk，在 unlink 中他們會把對方的值分別存到他們的位址
2. 但是重點是最後的 main 的 ret addr 會是 *(*ebp-4)-4 ，所以 payload 才長那樣

* 真的要跟進去才知道......
