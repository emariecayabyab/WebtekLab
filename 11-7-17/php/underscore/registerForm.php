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
    <div class="container login">
        <div class="col-lg-4 col-lg-offset-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="text-center"><strong>User Registration</strong></h4>
                </div>
                <div class="panel-body">
                  <form action="register.php" method="POST" accept-charset="UTF-8">
                      <div class="form-group">
                          <div class="input-group">
                              <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                              <input type="number" placeholder="Enter ID Number" class="form-control" name="idno" required>
                          </div>
                      </div>
                      <div class="form-group">
                          <div class="input-group">
                              <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                              <input type="password" placeholder="Enter password" class="form-control" name="password" required>
                          </div>
                      </div>
                      <div class="form-group">
                          <div class="input-group">
                              <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                              <input type="email" placeholder="Enter Email" class="form-control" name="email" required>
                          </div>
                      </div>
                      <div class="form-group">
                          <div class="input-group">
                              <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                              <input type="text" placeholder="Enter Firstname" class="form-control" name="firstname" required>
                          </div>
                      </div>
                      <div class="form-group">
                          <div class="input-group">
                              <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                              <input type="text" placeholder="Enter Lastname" class="form-control" name="lastname" required>
                          </div>
                      </div>
                      <div class="radio-inline">
                        <label><input type="radio" name="usertype" value="user"><span class="glyphicon glyphicon-user"></span> User</label>
                      </div>
                      <div class="radio-inline">
                        <label><input type="radio" name="usertype" value="admin"><span class="glyphicon glyphicon-cog"></span> Admin</label>
                      </div>
                      <div class="form-group">
                          <button type="submit" class="btn btn-primary">Register</button>
                          <button type="reset" class="btn btn-warning">Reset</button>
                      </div>
                  </form>
                </div>
            </div>
        </div>
    </div>
    </body>
</html>
