<?php

function randName() {
    return md5($_SERVER['REMOTE_ADDR'] . rand());
}

class TempFile {
    private $path;

    function __construct($path, $content) {
        $this->path = $path;
        file_put_contents($path, $content);
    }

    function __destruct() {
        exec("rm $this->path");
    }

    function read() {
        return file_get_contents($this->path);
    }
}

class NormalFile {
    public $path;

    function __construct($path) {
        $this->path = $path;
    }

    function write($content) {
        file_put_contents($this->path, $content);
    }

    function read() {
        return file_get_contents($this->path);
    }

    function exists() {
        return file_exists($this->path);
    }
}


if ($upload = @$_FILES['upload']) {
    // upload

    if ($upload['error'] !== 0) die('upload error');
    if ($upload['size'] > 4096) die('file too large');

    $name = randName();
    $f = new NormalFile("/tmp/$name.txt");
    $f->write(file_get_contents($upload['tmp_name']));

    header('Content-Type: text/plain');
    echo "Successful\n";
    echo "Path: $f->path\n";
    echo "Size: " . strlen($f->read()) . "\n";
    exit;
    
} else if ($path = @$_GET['check']) {
    $f = new NormalFile($path);
    
    header('Content-Type: text/plain');
    echo "Successful\n";
    echo "Path: $f->path\n";
    echo "Exists: " . ($f->exists()  ? 'Yes' : 'No') . "\n";
    exit;

} else if (isset($_GET['source'])) {
    highlight_file(__FILE__);
    exit;
}
?>


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<title>File App</title>
<div class="container">
    <h1 class="page-header">File App</h1>
    <form method="post" enctype="multipart/form-data">
        <label>Upload File</label>
        <input type="file" name="upload">
        <br>
        <button type="submit" class="btn btn-default">Upload</button>
    </form>
    <br><br>
    <form method="get">
        <label>Check File Existence</label>
            <input type="text" name="check" value="/flag">
            <input class="btn btn-default" type="submit" value="Check">
    </form>
    <br><br>
    <a href="?source">source code</a>
</div>
