<?php
  include('database.php');

  ?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Search</title>
    <link rel="stylesheet" href="bootstrap-3.3.7-dist\css\bootstrap.min.css">
  </head>
  <body>
    <?php include('navbar.php'); ?>

    <?php
        if($_POST['search_class']) {
          $search = $_POST['search_class'];

          $sql = "SELECT * FROM users WHERE (idno='$search' || firstname='$search' || lastname='$search') ORDER BY idno";

          $result = mysqli_query($conn, $sql);
          $rows = mysqli_fetch_array($result, MYSQLI_ASSOC);

          if($rows['idno'] == $search || strcasecmp($rows['firstname'],$search)==0 || strcasecmp($rows['lastname'],$search)==0){
            ?>
            <div class="container-fluid" align="center">
              <span class="glyphicon glyphicon-user"></span><?php echo ' Search Results of <strong>' . $search . '</strong>'; ?>
            </div>

            <table class="table table-hover">
              <thead>
                <th>ID Number</th>
                <th>E-mail</th>
                <th>Password</th>
                <th>Name</th>
                <th>Type</th>
                <th>Status</th>
                <th>Action</th>
              </thead>
            <?php
            do {
              ?>
                <tr>
                  <form action="userPosts.php" method="POST">
                      <input type="hidden" name="idno" value="<?php echo $rows['idno']; ?>">
                      <td><button type="submit" name="submit" class="btn btn-secondary"><?php echo $rows['idno']; ?></button></td>
                  </form>
                  <td><?php echo $rows['email'] ?></td>
                  <td>
                    <?php echo $rows['password']; ?>
                    <form class="" action="changePassword.php" method="post" enctype="multipart/form-data">
                        <input type="hidden" value="<?php echo $rows['idno']; ?>" name="idno">
                        <button class="btn btn-warning">
                          <span class="glyphicon glyphicon-repeat"></span>
                        </button>
                    </form>
                  </td>
                  <td><?php echo $rows['firstname'] . " " . $rows['lastname'] ?></td>
                  <td><?php echo $rows['userType']?></td>
                  <td><?php echo $rows['status']?></td>
                  <form action="changeStatus.php" method="POST">
                    <input type="hidden" name="status" value="<?php echo $rows['status'];?>">
                    <input type="hidden" name="chidno" value="<?php echo $rows['idno'];?>">
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
                  </form>
                </tr>
            <?php } while ($rows = mysqli_fetch_assoc($result));
            ?>
          </table>
          <?php
          } else {
            echo '<p align="center">Your search of <strong>' . $search . '</strong> is not found!';
          }
        }
       ?>
  </body>
</html>
