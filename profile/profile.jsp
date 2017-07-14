<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="bootstrap-3.3.7-dist\css\bootstrap.min.css">
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <link rel="stylesheet" href="css\profilecss.css">
        <script src="javascript/profilescript.js"></script>
        <title>Profile</title>
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
                                <li><a href="./ORqmj">Home</a></li>
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
        <div class="col-lg-3 col-md-3 hidden-sm hidden-xs">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="media">
                        <div align="center">
                            <img class="thumbnail img-responsive" src="https://lut.im/7JCpw12uUT/mY0Mb78SvSIcjvkf.png" width="200px" height="200px">
			<div class="upload">
                                <label for="change-photo">
                                    <a title="" class="btn btn-link" data-toggle="tooltip" data-original-title="Picture" style="text-decoration: none;">
                                    <i class="fa fa-fw fa-picture-o" aria-hidden="true"></i>Change Photo</a>
                                </label>
                                <input id="change-photo" type="file" accept="image/*"/>
                            </div>
                        <a href="#" class="btn btn-link" style="text-decoration:none;"><i class="fa fa-fw fa-pencil-square" aria-hidden="true"></i> Edit Profile</a>
                        </div>
                        <div class="media-body">
                            <h3><strong>Email</strong></h3>
                            <p>idnum@slu.edu.ph</p>
                            <h3><strong>Contact Number</strong></h3>
                            <p>(+63) 905 123 4567</p>
                            <h3><strong>Location</strong></h3>
                            <p>Baguio City</p>
                            <h3><strong>Birthday</strong></h3>
                            <p>January 01 1997</p>
                            <h3><strong>Group/s</strong></h3>
                            <p>Icon</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
            <div class="panel panel-default">
                <div class="panel-body">
                    <span>
                        <h1 class="panel-title pull-left" style="font-size:30px;">Student Name<i class="fa fa-check text-success" aria-hidden="true" data-toggle="tooltip" data-placement="bottom"></i></h1>
                    </span>
                    <span>
                </div>
            </div>
            <hr>
        </div>
        <div class="panel panel-default">
                <div class="panel-body">
                    <div class="pull-left">
                        <a href="#">
                            <img class="media-object img-circle" src="https://lut.im/7JCpw12uUT/mY0Mb78SvSIcjvkf.png" width="50px" height="50px" style="margin-right:8px; margin-top:-5px;">
                        </a>
                    </div>
                    <h4><a href="#" style="text-decoration:none;"><strong>Student Name</strong></a>
                    <br><small><small><a href="#" style="text-decoration:none; color:grey;"><i><i class="fa fa-clock-o" aria-hidden="true"></i> Date</i></a></small></small></h4>
					<hr>
                    <div class="post-content">
						<small><small><a href="#" style="text-decoration:none; color:grey;"><i><i class="fa fa-clock-o" aria-hidden="true"></i> Public</i></a></small></small></h4>
                        <p><%%></p>
                    </div>
                    <hr>
                </div>
            </div>
    </div>
</div>

    </body>
</html>
