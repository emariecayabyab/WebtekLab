<?php
  include('database.php');

  $postid = $_POST['postID'];
  // $file = $_POST['fileupload'];

  $sql = "DELETE FROM posts WHERE (postID=$postid)";

  if($conn->query($sql) === TRUE){
    header("Location: posts.php");
  } else {
    echo '<div class="alert alert-danger fade in" align="center">';
    echo '<span class="glyphicon glyphicon-remove-circle"></span><strong> Error in deleting a post.</strong>';
    echo '<a href="announcement.php"> Please Try Again</a>';
    echo '</div>';
  } $conn->close();
 ?>
