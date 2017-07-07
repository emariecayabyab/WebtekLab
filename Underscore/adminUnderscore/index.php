<?php
  session_start();
  include('database.php');
  $_SESSION['name'] = 'Admin CC';
  $_SESSION['idno'] ='1000000';
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>
    Admin Dashboard
  </title>
  <link rel="stylesheet" href="bootstrap-3.3.7-dist\css\bootstrap.min.css">
</head>

  <body>
    <?php include('navbar.php'); ?>

    <div class="container-fluid" align="center">
      <span class="glyphicon glyphicon-user"></span>
      Welcome<strong> <?php echo $_SESSION['name']; ?></strong>
    </div>

    <table>
      <thead>
        <th></th>
      </thead>
    </table>
  </body>
</html>
