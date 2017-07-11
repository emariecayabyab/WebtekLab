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
     <?php include('navbar.php');
     $adminname = $_SESSION['firstname'] . " " . $_SESSION['lastname'];
      ?>

     <div class="container-fluid" align="center">
       <span class="glyphicon glyphicon-user"></span> Welcome <?php echo $adminname; ?><br>
     </div>

     <table class="table table-hover">
       <thead>
         <th>Group Post ID</th>
         <th>Group ID</th>
         <th>ID Number</th>
         <th>Name</th>
         <th>Content</th>
         <th>Action</th>
       </thead>

       <?php
       $groupid = $_POST['groupid'];
       $sql = "SELECT * FROM grouppost JOIN groups ON grouppost.groupid = groups.groupid JOIN users ON grouppost.idno=users.idno WHERE groups.groupid='$groupid' ORDER BY grouppost.gpostid";
       $result = mysqli_query($conn, $sql);
       $rows = mysqli_fetch_array($result, MYSQLI_ASSOC);
       do{
         ?>
         <tr>
           <td><?php echo $rows['gpostid']; ?></td>
           <td><?php echo $rows['groupid']; ?></td>
           <td><?php echo $rows['idno']; ?></td>
           <td><?php echo $rows['firstname'] . " " . $rows['lastname']; ?></td>
           <td><?php echo $rows['content']; ?></td>
           <form action="deleteGPost.php" method="POST">
             <input type="hidden" name="gpostid" value="<?php echo $rows['gpostid']; ?>">
             <td>
               <button type="submit" name="submit" class="btn btn-danger">Delete</button>
             </td>
           </form>
         </tr>
       <?php }while($rows = mysqli_fetch_assoc($result)); ?>
     </table>
   </body>
 </html>
