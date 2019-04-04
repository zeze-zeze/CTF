<html>
    <head>
        <title>Puzzle</title>
        <style>
            #main {
    height: 100vh;
}
        </style>
    </head>
    <body>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<?php
$puzzle = $_SERVER['HTTP_USER_AGENT'];
if (is_numeric($puzzle)){
      if (strlen($puzzle) < 4){
          if ($puzzle > 10000){
                 echo ('<div class="d-flex justify-content-center align-items-center" id="main">
    <h1 class="mr-3 pr-3 align-top border-right inline-block align-content-center">Correct</h1>
    <div class="inline-block align-middle">
    	<h2 class="font-weight-normal lead" id="desc">radar{}</h2>
    </div>
</div>');
          } else {
                 echo ('<div class="d-flex justify-content-center align-items-center" id="main">
    <h1 class="mr-3 pr-3 align-top border-right inline-block align-content-center">Wrong</h1>
    <div class="inline-block align-middle">
    	<h2 class="font-weight-normal lead" id="desc">you solved 2 out 3</h2>
    </div>
</div>');
          }
      } else {
             echo ('<div class="d-flex justify-content-center align-items-center" id="main">
    <h1 class="mr-3 pr-3 align-top border-right inline-block align-content-center">Wrong</h1>
    <div class="inline-block align-middle">
    	<h2 class="font-weight-normal lead" id="desc">you solved 1 out 3</h2>
    </div>
</div>');
      }
} else {
    echo ('<div class="d-flex justify-content-center align-items-center" id="main">
    <h1 class="mr-3 pr-3 align-top border-right inline-block align-content-center">Wrong</h1>
    <div class="inline-block align-middle">
    	<h2 class="font-weight-normal lead" id="desc">you solved 0 out 3</h2>
    </div>
</div>');
}
?>

<!-- don't forget to remove /administrator_files.zip -->
    </body>
</html>