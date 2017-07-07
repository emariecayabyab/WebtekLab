<?php
  include("database.php");
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
      <a href="registerForm.php" class="btn btn-primary">Create new user</a>
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
        $sql = "SELECT * FROM users ORDER BY idno";
        $result = mysqli_query($conn, $sql);
        $rows = mysqli_fetch_array($result, MYSQLI_ASSOC);
        do {?>
          <tr>
            <td><?php echo $rows['idno']; ?></td>
            <td><?php echo $rows['email']; ?></td>
            <td>
              <?php echo $rows['password']; ?>
              <form class="" action="changePassword.php" method="post" enctype="multipart/form-data">
                  <input type="hidden" value="<?php echo $rows['idno']; ?>" name="idno">
                  <button class="btn btn-warning">
                    <span class="glyphicon glyphicon-repeat"></span>
                  </button>
              </form>
            </td>
            <td><?php echo $rows['firstname'] . " " . $rows['lastname']; ?></td>
            <td><?php echo $rows['userType']; ?></td>
            <td><?php echo $rows['status']; ?></td>
            <form action="changeStatus.php" method="POST">
              <input type="hidden" name="status" value="<?php echo $rows['status']?>">
              <input type="hidden" name="chidno" value="<?php echo $rows['idno']?>">
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
  </body>
</html>
