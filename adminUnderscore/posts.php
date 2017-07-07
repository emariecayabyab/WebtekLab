<?php
  include('database.php');
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
       <a href="announcement.php" class="btn btn-primary">Make an Announcement</a>
     </div>

     <table class="table table-hover">
       <thead>
         <th>Post ID</th>
         <th>ID Number</th>
         <th>Name</th>
         <th>Content</th>
         <th>Photo/File</th>
         <th>Privacy</th>
         <th>Action</th>
       </thead>

       <?php
         $sql = "SELECT * FROM posts JOIN users ON users.idno=posts.idno ORDER BY postID";
         $result = mysqli_query($conn, $sql);
         $rows = mysqli_fetch_array($result, MYSQLI_ASSOC);

        //  $image = $_FILE['image'];
        //  $_FILE['image'] = $rows['file'];

         do {?>
           <tr>
             <td><?php echo $rows['postID']; ?></td>
             <td><?php echo $rows['idno']; ?></td>
             <td><?php echo $rows['firstname'] . " " . $rows['lastname']; ?></td>
             <td><?php echo $rows['content']; ?></td>
             <td><?php echo $rows['file']; ?></td>
             <th><?php echo $rows['privacy']; ?></th>
             <th>
               <form action="deletePost.php" method="POST">
                 <input type="hidden" name="postID" value="<?php echo $rows['postID']?>">
                 <button type="submit" name="delete_post" class="btn btn-danger">Delete</button>
               </form>
             </th>
           </tr>
         <?php } while ($rows = mysqli_fetch_assoc($result));
        ?>
     </table>

   </body>
  </html>
