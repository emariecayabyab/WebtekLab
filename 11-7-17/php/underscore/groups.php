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
       <a href="createGroup.php" class="btn btn-primary">Create a Group</a>
     </div>

     <table class="table table-hover">
       <thead>
         <th>Group ID</th>
         <th>Group Name</th>
         <th>Number of Members</th>
         <th>Number of Posts</th>
         <th>Privacy</th>
         <th>Status</th>
         <th>Action</th>
       </thead>

       <?php
        $sql = "SELECT * FROM groups ORDER BY groupid";
        $result = mysqli_query($conn, $sql);
        $rows = mysqli_fetch_array($result, MYSQLI_ASSOC);

        do{ ?>
          <tr>
            <form action="groupPosts.php" method="POST">
                <input type="hidden" name="groupid" value="<?php echo $rows['groupid']; ?>">
                <td><button type="submit" name="submit" class="btn btn-secondary"><?php echo $rows['groupid']; ?></button></td>
            </form>
            <td><?php echo $rows['groupName']; ?></td>
            <td><?php echo $rows['groupName']; ?></td>
            <td><?php echo $rows['groupName']; ?></td>
            <td><?php echo $rows['privacy']; ?></td>
            <td><?php echo $rows['status']; ?></td>
            <?php
            if (strcasecmp($rows['status'], 'pending')==0) {
             echo '<td>';
             echo '<button type="submit" class="btn btn-primary" name="userAction">Approve</button>';
             echo '</td>';
           } else {
             echo '<td>';
             echo '<button type="submit" class="btn btn-danger" name="userAction">Block</button>';
             echo '</td>';
           }
             ?>
          </tr>
        <?php } while ($rows = mysqli_fetch_assoc($result));
        ?>
     </table>
   </body>
 </html>
