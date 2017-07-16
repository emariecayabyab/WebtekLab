<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="bootstrap-3.3.7-dist\css\bootstrap.min.css">
        <link rel="stylesheet" href="css\editprofile.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
        <title>Edit Profile</title>
    </head>
    <body>
<div class="mainbody container-fluid">
    <div class="row">
        <div class="navbar-wrapper">
            <div class="container-fluid">
                <div class="navbar navbar-default navbar-static-top" role="navigation">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span><span
                                    class="icon-bar"></span><span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="./ORqmj" style="margin-right:-8px; margin-top:-5px;">
                                <img alt="Brand" src="temporary-logo.png" width="30px" height="30px">
                            </a>
                            <a class="navbar-brand" href="./ORqmj">SLU SUMMIT</a>
                        </div>
                        <div class="navbar-collapse collapse">
                            <ul class="nav navbar-nav">
                                <li><a href="#">Home</a></li>
                                <li><a href="#">Profile</a></li>
								<li><a href="#">Friends</a></li>
								<li><a href="#">Group</a></li>
                            </ul>
							<ul class="nav navbar-nav navbar-right">
										<li>
												<form class="search" action="searchPage.jsp" method="post">
												<input type="text" class="form-control" id="inputSuccess"/>
												<span class="glyphicon glyphicon-search form-control-feedback"></span>
												</form>
										</li>
										<li><a href="">Log Out</a></li>
							</ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
		<div style="padding-top:50px;"> </div>
		<div class="panel panel-default">
        <div class="container">
		  <div class="row">
			<div class="col">
				<h3><strong>Edit Profile</strong></h3>
				<div class="form-group">
				<form class="form-inline">
				<div class="form-group">
				  <label for="connum">ID Number</label>
					<input type="text" class="form-control" id="connum" placeholder="2134567" disabled>
				</div>
				</form>
				</div><hr>
				<div class="form-group">
				<form class="row">
				<div class="col-lg-2">
				  <label for="connum">Password</label>
					<input type="Password" class="form-control" id="connum" placeholder="New Password">
				</div>
				</form>
				</div><hr>
				<div class="form-group">
				<form class="row">
				  <div class="col-lg-2">
					<label for="firstname">First Name:</label>
					<input type="text" class="form-control" id="firstname" placeholder="current first name">
				  </div>
				  <div class="col-lg-2">
					<label for="lastname">Last Name:</label>
					<input type="text" class="form-control" id="lastname" placeholder="current last name">
				  </div>
				  </form>
				</div><hr>
				<div class="form-group">
				<form class="row">
				<div class="col-lg-2">
				  <label for="connum">Contact Number:</label>
					<input type="text" class="form-control" id="connum" placeholder="current contact number">
				</div>
				</form>
				</div><hr>
				<div class="form-group">
					<form class="row">
					  <div class="col-lg-2">
						<label for="email">Month</label>
						<select class="form-control" id="sel1">
							<option>January</option>
							<option>February</option>
							<option>March</option>
							<option>April</option>
							<option>May</option>
							<option>June</option>
							<option>July</option>
							<option>August</option>
							<option>September</option>
							<option>October</option>
							<option>November</option>
							<option>December</option>
						  </select>
					  </div>
					  <div class="col-lg-1">
						<label for="pwd">Day</label>
						<input type="number" class="form-control" id="pwd">
					  </div>
					  <div class="col-lg-2">
						<label for="pwd">Year</label>
						<select class="form-control" id="sel1">
							<option>1990</option>
							<option>1991</option>
							<option>1992</option>
							<option>1993</option>
						  </select>
					  </div>
					</form>
				</div><hr>
				<div class="form-group">
				<form class="row">
				<div class="col-lg-2">
				  <label for="connum">City/Town:</label>
					<input type="text" class="form-control" id="connum" placeholder="Baguio City">
				</div>
				</form>
				</div><hr>
				<button type="submit" class="btn btn-default">Submit</button>
			</div>
		  </div>
		</div>
		</div>
		</div>
		
		
		
		
		
		
	</div>
</div>

    </body>
</html>