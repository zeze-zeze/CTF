<?php

// There is a column "flag" in some table.

highlight_file(__FILE__);
include("config.php");

$waf = array("information", "schema", " ", "delete", "update", "insert", "--", "*", "%", "=", "@", "sleep", "benchmark", "file");

$conn = mysqli_connect($host, $dbuser, $dbpass, "news") or die('connection failed');

$id = $_GET['id'];

for($i = 0; $i < count($waf); $i++) 
    if(stripos($id, $waf[$i]))
        die("Bad Hacker!");

$res = mysqli_query($conn, "SELECT * FROM info WHERE id='" . $id . "'");

if (mysqli_num_rows($res) > 0) {
    $row = mysqli_fetch_assoc($res);
    var_dump($row);
} else {
    echo "Q___________Q";
}

array(3) { ["id"]=> string(1) "1" ["title"]=> string(1) "2" ["content"]=> string(21) "this_is_table_nameXDD" }
