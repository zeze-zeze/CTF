# actf crypto Half and Half
1. 題目是個 one-time-padding，看來沒什麼漏洞
2. 題目在 xor 之後總共 12 字元，已知前半段的前五個字元是 actf{，後半段的最後一個字元是 }
3. 所以只差 6 個字元，題目有提示 coffee，所以就猜下去，然後就拿到 flag 了

* flag=actf{coffee_tastes_good}
