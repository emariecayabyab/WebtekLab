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
    <nav class="navbar navbar-default">
      <div class="container-fluid">
        <div class="navbar-header">
          <a href="index.php" class="navbar-brand">
            <span class="glyphicon glyphicon-book"></span> Underscore Admin Dashboard
          </a>
        </div>

      </div>
    </nav>

    <div class="container login">
        <div class="col-lg-4 col-lg-offset-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="text-center"><strong>Admin Login Portal</strong></h4>
                </div>
                <div class="panel-body">
                    <form action="login.php" method="POST" accept-charset="UTF-8">
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
                            <button type="submit" class="btn btn-primary">Login</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

  </body>
</html>
