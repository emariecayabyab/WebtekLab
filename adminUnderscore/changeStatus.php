<?php
  include('database.php');

  $status = $_POST['status'];
  $idno = $_POST['chidno'];
  $sqlApprove = "UPDATE users SET status='approved' WHERE idno=$idno";
  $sqlPending = "UPDATE users SET status='pending' WHERE idno=$idno";
  if(strcasecmp($status, 'pending')==0){
    $conn->query($sqlApprove);
    header("Location: users.php");
  } else {
    $conn->query($sqlPending);
    header("Location: users.php");
  }
 ?>
