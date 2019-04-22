# actf reverse One Byte
1. 打開 idapro
2. 程式把原本的 flag 的每個字元都和 0x3c 做 xor，最後得到的字串是 ]_HZGUcHTURWcUQc[SUR[cHSc^YcOU_WA
3. 所以把它再和 0x3c 做一次 xor 就是 flag 了

* [script](sol.py)
