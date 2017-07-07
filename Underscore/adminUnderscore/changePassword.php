<?php
  include('database.php');

  $idno = $_POST['idno'];
  $sql = "UPDATE users SET password='$idno' WHERE idno=$idno";

  if($conn->query($sql) == TRUE){
    header("Location: users.php");
  }
 ?>
