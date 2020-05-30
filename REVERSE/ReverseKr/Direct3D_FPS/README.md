# Solution
1. Search for the string `Game Clear` and open IDA to decompile the program. The `Game Clear` is in the function `sub_4039C0`.
2. `sub_4039C0` iteratively check the value of 0x409194 ~ 0x40F8B4, 132 * 4 bytes each. We can understand that this is an object sized 132 * 4 bytes. Then, if one of the values in all objects are not 1, it calls MessageBoxA, which prints some kind of cipher in `0x407028` and `Game Clear`.
3. So, we have to decrypt the cipher. What we have to do is trace `0x407028` to see what the program does to this address. By pressing x in IDA, we can trace to `sub_403400`.
4. By playing the game, setting the breakpoint and following, we can know the function is to check whether we hit a monster first, then if we did, it checks what monster we hit and whether the monster is still alive. If it is alive, it will decrease 2. Otherwise, it will xor the index of monster of cipher `0x407028` with the index of monster of `0x409184`, which can be seen by setting a breakpoint.
5. Finally, we get the value of every index of monster of `0x409184` which are `0, 4, 8, 12, ......`. Just write a python script to xor and get the flag = `Thr3EDPr0m`.
