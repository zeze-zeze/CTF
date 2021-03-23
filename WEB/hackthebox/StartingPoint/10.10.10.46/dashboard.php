<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Admin Dashboard</title>
  <link rel="stylesheet" href="./dashboard.css">
  <script src="https://use.fontawesome.com/33a3739634.js"></script>

</head>
<body>
<!-- partial:index.partial.html -->
<body>
 <div id="wrapper">
 <div class="parent">
  <h1 align="left">MegaCorp Car Catalogue</h1>
<form action="" method="GET">
<div class="search-box">
  <input type="search" name="search" placeholder="Search" />
  <button type="submit" class="search-btn"><i class="fa fa-search"></i></button>
</div>
</form>
  </div>

  <table id="keywords" cellspacing="0" cellpadding="0">
    <thead>
      <tr>
        <th><span style="color: white">Name</span></th>
        <th><span style="color: white">Type</span></th>
        <th><span style="color: white">Fuel</span></th>
        <th><span style="color: white">Engine</span></th>
      </tr>
    </thead>
    <tbody>
        <?php
        session_start();
        if($_SESSION['login'] !== "true") {
          header("Location: index.php");
          die();
        }
        try {
          $conn = pg_connect("host=localhost port=5432 dbname=carsdb user=postgres password=P@s5w0rd!");
        }

        catch ( exception $e ) {
          echo $e->getMessage();
        }

        if(isset($_REQUEST['search'])) {

          $q = "Select * from cars where name ilike '%". $_REQUEST["search"] ."%'";

          $result = pg_query($conn,$q);

          if (!$result)
          {
                            die(pg_last_error($conn));
          }
          while($row = pg_fetch_array($result, NULL, PGSQL_NUM))
              {
                echo "
                  <tr>
                    <td class='lalign'>$row[1]</td>
                    <td>$row[2]</td>
                    <td>$row[3]</td>
                    <td>$row[4]</td>
                  </tr>";
            }
        }
        else {

          $q = "Select * from cars";

          $result = pg_query($conn,$q);

          if (!$result)
          {
                            die(pg_last_error($conn));
          }
          while($row = pg_fetch_array($result, NULL, PGSQL_NUM))
              {
                echo "
                  <tr>
                    <td class='lalign'>$row[1]</td>
                    <td>$row[2]</td>
                    <td>$row[3]</td>
                    <td>$row[4]</td>
                  </tr>";
            }
        }


      ?>
    </tbody>
  </table>
 </div>
</body>
<!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery.tablesorter/2.28.14/js/jquery.tablesorter.min.js'></script><script  src="./dashboard.js"></script>

</body>
</html>
