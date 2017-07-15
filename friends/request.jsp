<%-- 
    Document   : request
    Created on : 07 10, 17, 3:06:38 PM
    Author     : s326lab
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/bootstrap-3.3.7-dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/friendstyle.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://bootswatch.com/cosmo/bootstrap.min.css">
        <title>Friends</title>
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
                            <a class="navbar-brand" href="dashboard.jsp" style="margin-right:-8px; margin-top:-5px;">
                                <img alt="Brand" src="temporary-logo.png" width="30px" height="30px">
                            </a>
                            <p class="navbar-brand" >SLU SUMMIT</p>
                        </div>
                        <div class="navbar-collapse collapse">
                            <ul class="nav navbar-nav">
                                <li><a href="dashboard.jsp">Home</a></li>
                                <li><a href="profile.jsp">Profile</a></li>
                                <li><a href="friendList.jsp">Friends</a></li>
                                <li><a href="#">Group</a></li>
                            </ul>
                <ul class="nav navbar-nav navbar-right">
                     <li>
                        <form class="search" action="searchPage.jsp" method="post">
                            <input type="text" class="form-control" id="inputSuccess"/>
                            <span class="glyphicon glyphicon-search form-control-feedback"></span>
                        </form>
                    </li>
                        <li><a href="logout.jsp">Log Out</a></li>
                </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
         <div class="col-lg-3 col-md-3 hidden-sm hidden-xs">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="media">
                        <div align="center">
                            <img class="thumbnail img-responsive" src="https://lut.im/7JCpw12uUT/mY0Mb78SvSIcjvkf.png" width="200px" height="200px">
            
                      
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
    <br/>
    <strong><a href="friendList.jsp">Friends</a> | Pending Friend Requests</strong>
    <hr/>
      
    <div class="container" style="padding-left:120px;">
        <div class="row">
            <div class="[ col-xs-12 col-sm-offset-0 col-sm-10 ]">
                <ul class="event-list">                 
                <li>
                    <ul class="nav navbar-nav navbar-right">
                        <br/>
                        <br/>
                            <span style="padding-right:30px; margin-top:100px;" >
                                 <button type="submit" class="btn btn-primary btn-lg btn3d"><span class="glyphicon glyphicon-plus-sign"></span>Accept</button>
                            </span>
                            <span style="padding-right:30px;">
                                <button type="submit" class="btn3d btn btn-white btn-lg"><span class="glyphicon glyphicon-minus-sign"></span>Decline</button>
                            </span>
                    </ul>
                        <img class="img-responsive img-square" src="https://lut.im/7JCpw12uUT/mY0Mb78SvSIcjvkf.png">                
                        <div class="info">
                            <h3 style="padding-left:20px;"><a href="">John Doe</a></h3>
                            <p style="padding-left:20px; margin-top:-10px; font-size:13px; color:#A9A9A9;" class="desc">wants to add you as a friend.</p>
                        </div>
                    
                    </li>

                    <li>
                        <ul class="event-list">                 
                <li>
                    <ul class="nav navbar-nav navbar-right">
                        <br/>
                        <br/>
                            <span style="padding-right:30px; margin-top:100px;" >
                                 <button type="submit" class="btn btn-primary btn-lg btn3d"><span class="glyphicon glyphicon-plus-sign"></span>Accept</button>
                            </span>
                            <span style="padding-right:30px;">
                                <button type="submit" class="btn3d btn btn-white btn-lg"><span class="glyphicon glyphicon-minus-sign"></span>Decline</button>
                            </span>
                    </ul>
                        <img class="img-responsive img-square" src="https://lut.im/7JCpw12uUT/mY0Mb78SvSIcjvkf.png">                
                        <div class="info">
                            <h3 style="padding-left:20px;"><a href="">John Doe</a></h3>
                            <p style="padding-left:20px; margin-top:-10px; font-size:13px; color:#A9A9A9;" class="desc">wants to add you as a friend.</p>
                        </div>
                    </li>

                    <li>
                        <ul class="event-list">                 
                <li>
                    <ul class="nav navbar-nav navbar-right">
                        <br/>
                        <br/>
                            <span style="padding-right:30px; margin-top:100px;" >
                                 <button type="submit" class="btn btn-primary btn-lg btn3d" value="accept"><span class="glyphicon glyphicon-plus-sign"></span>Accept</button>
                            </span>
                            <span style="padding-right:30px;">
                                <button type="submit" class="btn3d btn btn-white btn-lg" value="decline"><span class="glyphicon glyphicon-minus-sign"></span>Decline</button>
                            </span>
                    </ul>
                        <img class="img-responsive img-square" src="https://lut.im/7JCpw12uUT/mY0Mb78SvSIcjvkf.png">                
                        <div class="info">
                            <h3 style="padding-left:20px;"><a href="">John Doe</a></h3>
                            <p style="padding-left:20px; margin-top:-10px; font-size:13px; color:#A9A9A9;" class="desc">wants to add you as a friend.</p>
                        </div>
                    
                    </li>

                               
                <li>
                    <ul class="nav navbar-nav navbar-right">
                        <br/>
                        <br/>
                            <span style="padding-right:30px; margin-top:100px;" >
                                 <button type="submit" class="btn btn-primary btn-lg btn3d"><span class="glyphicon glyphicon-plus-sign"></span>Accept</button>
                            </span>
                            <span style="padding-right:30px;">
                                <button type="submit" class="btn3d btn btn-white btn-lg"><span class="glyphicon glyphicon-minus-sign"></span>Decline</button>
                            </span>
                    </ul>
                        <img class="img-responsive img-square" src="https://lut.im/7JCpw12uUT/mY0Mb78SvSIcjvkf.png">                
                        <div class="info">
                            <h3 style="padding-left:20px;"><a href="">John Doe</a></h3>
                            <p style="padding-left:20px; margin-top:-10px; font-size:13px; color:#A9A9A9;" class="desc">wants to add you as a friend.</p>
                        </div>
                    
                    </li>
                

    </body>
</html>