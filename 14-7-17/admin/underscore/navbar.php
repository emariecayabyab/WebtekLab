<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a href="index.php" class="navbar-brand">
        <span class="glyphicon glyphicon-book"></span> Underscore Admin Dashboard
      </a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="users.php"><span class="glyphicon glyphicon-user"></span> Users</a></li>
      <li><a href="groups.php"><span class="glyphicon glyphicon-star"></span> Groups</a></li>
      <li><a href="posts.php"><span class="glyphicon glyphicon-upload"></span> Posts</a></li>
      <li><a href="logout.php"><span class="glyphicon glyphicon-off"></span> Logout</a></li>
    </ul>
    <form class="navbar-form navbar-right" action="search.php" method="post" enctype="multipart/form-data">
      <div class="input-group">
        <input type="search" class="form-control" placeholder="Search User" name="search_class" required>
        <div class="input-group-btn">
          <button class="btn btn-primary">
            <span class="glyphicon glyphicon-search"></span>
          </button>
        </div>
      </div>
    </form>
  </div>
</nav>
