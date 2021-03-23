<?php

class MyFirstCTF {
    protected $test = "CTF";
    function __wakeup()
    {
        print "Wake up yo!<br>";
        system("echo ".$this->test);
    }
}

$input = $_GET['str'];
$kb = unserialize($input);

highlight_file(__FILE__);
