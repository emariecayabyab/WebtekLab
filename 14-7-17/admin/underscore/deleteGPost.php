<?php
  include('database.php');

  $postid = $_POST['gpostid'];

  $sql = "DELETE FROM grouppost WHERE (gpostid=$postid)";

  if($conn->query($sql) === TRUE){
    header("Location: groups.php");
  } else {
    echo '<div class="alert alert-danger fade in" align="center">';
    echo '<span class="glyphicon glyphicon-remove-circle"></span><strong> Error in deleting a post.</strong>';
    echo '<a href="announcement.php"> Please Try Again</a>';
    echo '</div>';
  } $conn->close();
 ?>
