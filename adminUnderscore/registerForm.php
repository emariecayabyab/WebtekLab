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
            <form action="register.php" method="POST" accept-charset="UTF-8">
                <div class="col-xs-4">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <input type="text" placeholder="Enter ID Number" class="form-control" name="idno" required>
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                        <input type="password" placeholder="Enter password" class="form-control" name="password" required>
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                        <input type="email" placeholder="Enter e-mail" class="form-control" name="email" required>
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-plus-sign"></i></span>
                        <input type="text" placeholder="Enter first name" class="form-control" name="firstname" required>
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-minus-sign"></i></span>
                        <input type="text" placeholder="Enter last name" class="form-control" name="lastname" required>
                    </div>
                    <div class="radio-inline">
                      <label><input type="radio" name="usertype" value="user"><span class="glyphicon glyphicon-user"></span> User</label>
                    </div>
                    <div class="radio-inline">
                      <label><input type="radio" name="usertype" value="admin"><span class="glyphicon glyphicon-cog"></span> Admin</label>
                    </div>

                    <div class="btn-group">
                      <button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-send"></span> Register</button>
                      <button type="reset" value="Reset" class="btn btn-warning"><span class="glyphicon glyphicon-erase"></span> Reset</button>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>
