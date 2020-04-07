# Miscrypto Alphabet

* points: 446
* description: Help us to recover the alphabet.

## solution
1. Info we get

We are given a picture, where 26 words begin with 26 alphabet and a number put beside each word. I understand each alphabet equal to a number which I call it n.

By looking at top of the picture, we can guess that the flag is chr(n) from a-z

2. use z3 to solve it

Setting some restritions to z3, we can finally have the [script](sol.py). Note that the hyphen '-' counts, too.

After running the script, we get the flag `F#{y0u-ar4-gr34t-w1th-z3!}`.
