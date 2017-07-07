<?php
  include('database.php');

  $idno = $_POST['idno'];
  $email = $_POST['email'];
  $password = $_POST['password'];
  $firstname = $_POST['firstname'];
  $lastname = $_POST['lastname'];
  $usertype = $_POST['usertype'];

  $sql = "INSERT INTO users (idno, email, password, firstname, lastname, userType, status) VALUES ('$idno', '$email', '$password', '$firstname', '$lastname', '$usertype', 'pending')";

  if($conn->query($sql) == TRUE){
    header("Location: users.php");
  } else {
    echo '<div class="alert alert-danger fade in" align="center">';
    echo '<span class="glyphicon glyphicon-remove-circle"></span><strong> Error in registering a user.</strong>';
    echo '<a href="registerForm.php"> Please Try Again</a>';
    echo '</div>';
  } $conn->close();
 ?>
