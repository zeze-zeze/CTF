<?php
#$_SERVER['HTTP_REFERER'] = "asd";
echo $_SERVER['HTTP_REFERER'];

#$_SERVER['SERVER_HOST'] = "a";
echo $_SERVER['SERVER_HOST'];

echo @$_SESSION['flag']

?>

<form method="post" action="http://web.djosix.com:15104/" style="border: 2px solid black; padding: 10px">
    <input id="but" type="submit" value="submit" name="submit">
</form>
<script>document.getElementById("but").click()</script>

