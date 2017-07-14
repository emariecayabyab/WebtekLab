<?php
  include('database.php');
  $idno = $_POST['idno'];
  $password = $_POST['password'];

  $sql = "SELECT * FROM users WHERE idno='$idno' AND password='$password' LIMIT 1";

  $result = mysqli_query($conn, $sql);
  $rows = mysqli_fetch_array($result, MYSQLI_ASSOC);

  if($rows['idno']==$idno && $rows['password']==$password && $rows['userType']=='admin') {
    $_SESSION['idno'] = $rows['idno'];
    $_SESSION['firstname'] = $rows['firstname'];
    $_SESSION['lastname'] = $rows['lastname'];
    header("Location: users.php");
  } else {
    header("Location: index.php");
  }
 ?>
