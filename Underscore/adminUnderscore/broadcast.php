<?php
  include('database.php');

  $privacy = $_POST['privacy'];
  $content = $_POST['content'];
  // $file = $_FILE['fileupload'];
  // $idno = $_SESSION['idno'];

  $sql = "INSERT INTO posts (idno, content, privacy) VALUES (1000000, '$content', '$privacy')";

  if($conn->query($sql) === TRUE){
    header("Location: posts.php");
  } else {
    echo '<div class="alert alert-danger fade in" align="center">';
    echo '<span class="glyphicon glyphicon-remove-circle"></span><strong> Error in making an announcement.</strong>';
    echo '<a href="announcement.php"> Please Try Again</a>';
    echo '</div>';
  } $conn->close();
 ?>
