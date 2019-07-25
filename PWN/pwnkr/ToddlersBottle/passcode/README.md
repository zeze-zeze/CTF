# pwnkr passcode
1. 看到 scanf 第二個參數沒有 &，所以可以想辦法更動到 passcode1 的值，把他填成 printf 的位址
2. 要怎麼改到 passcode1 的值，在輸入 name 的位址跟 passcode1 只差了 96，但是卻可以輸入 100 個，所以可以改到

