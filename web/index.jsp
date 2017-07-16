<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="bootstrap-3.3.7-dist\css\bootstrap.min.css">
  <link rel="stylesheet" href="assets/css/index.css" type="text/css">
  <title>Saint Louis University Summit</title>
  <link rel="icon" href="SLU_Icon.jpg"> </head>

<body>
  <nav class="navbar navbar-expand-md navbar-light bg-faded text-center">
    <div class="container">
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbar2SupportedContent" aria-controls="navbar2SupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	  <span class="navbar-toggler-icon"></span> </button>
      <div class="collapse navbar-collapse text-center justify-content-center" id="navbar2SupportedContent">
        <ul class="navbar-nav">
          <!--  <li class="nav-item active">
            <a class="nav-link" href="#"><i class="fa fa-user fa-fw"></i>Home <span class="sr-only">(current)</span></a>
          </li>
		-->
          <li class="nav-item">
            <a href="index.jsp">
              <img border="0" alt="SLUSUMMIT" src="assets/image/SummitLogo.jpg" width="200" height="50"> </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Features</a>
          </li>

          &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
          &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
          &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
          &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
          &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp

          <form class="form-inline" action="Login" method="POST" accept-charset="UTF-8">
            <div class="form-group">
                <input type="text" name="idno" class="form-control" placeholder="SLU ID">

              &nbsp&nbsp&nbsp&nbsp&nbsp

              <input type="password" name="password" class="form-control" placeholder="Password"> </div>

              &nbsp&nbsp&nbsp&nbsp&nbsp
              
            <input type="submit" class="btn btn-primary" value="Sign In">
          </form>
        </ul>
      </div>
    </div>
  </nav>
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-6">

          <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner" role="listbox">
              <div class="carousel-item active">
                  <img class="d-block img-fluid" src="assets/image/1.jpg" alt="First slide">
              </div>
              <div class="carousel-item">
                  <img class="d-block img-fluid" src="assets/image/2.jpg" alt="Second slide">
              </div>
              <div class="carousel-item">
                  <img class="d-block img-fluid" src="assets/image/3.jpg" alt="Third slide">
              </div>
              <div class="carousel-item">
                  <img class="d-block img-fluid" src="assets/image/4.jpg" alt="Third slide">
              </div>
              <div class="carousel-item">
                  <img class="d-block img-fluid" src="assets/image/5.jpg" alt="Third slide">
              </div>
              <div class="carousel-item">
                  <img class="d-block img-fluid" src="assets/image/6.jpg" alt="Third slide">
              </div>
              <div class="carousel-item">
                  <img class="d-block img-fluid" src="assets/image/7.jpg" alt="Third slide">
              </div>
              <div class="carousel-item">
                  <img class="d-block img-fluid" src="assets/image/8.jpg" alt="Third slide">
              </div>
              <div class="carousel-item">
                  <img class="d-block img-fluid" src="assets/image/9.jpg" alt="Third slide">
              </div>
              <div class="carousel-item">
                  <img class="d-block img-fluid" src="assets/image/10.jpg" alt="Third slide">
              </div>
            </div>
          </div>

         <!-- img class="img-fluid d-block" src="3.jpg"> -->
        </div>

    <!--CAROUSEL-->
  
    <!-- 
		<div class="d-flex align-items-center text-left h-75 bg-opaque mask mask-faded-out" id="cover" 
			style="background-image: url(&quot;3.jpg&quot;);">
		-->

        <div class="col-md-6  ">
            <form method="POST" action="Register" class="Register">
            <div class="form-group"> <label>ID Number</label>
              <input type="number" name="idno" class="form-control" placeholder="ID Number"> </div>
            <div class="form-group"> <label>Email</label>
                <input type="Email" name="email" class="form-control" placeholder="Email"> </div>  
            <div class="form-group"> <label>Name</label>
              <input type="text" name="lastname" class="form-control" placeholder="Last Name"> </div>
              <input type="text" name="firstname" class="form-control" placeholder="First Name">
            <div class="form-group"> <label>Password</label>
              <input type="password" name="password" class="form-control" placeholder="Password"> </div>

          <button type="submit" class="btn btn-primary">Create Account</button>
          </form>
        </div>
      </div>
    </div>
  </div>

  <!--
        <div class="col-md-6">
          <h1 class="pi-item">Subscribe to Newsletter</h1>
          <form>
            <fieldset class="form-group"> <label for="exampleInputEmail1">Your name</label>
              <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Your name"> </fieldset>
            <fieldset class="form-group"> <label for="exampleInputEmail1">Email address</label>
              <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email"> </fieldset>
            <button type="submit" class="btn btn-primary">Submit</button>
          </form>
        </div>
   -->

  <div class="bg-faded py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <h1 class="pi-item">SLU SUMMIT</h1>
          <p> <strong>Saint Louis University</strong>
            <br>Main Campus
            <br>Gen. Luna Rd., Baguio, Benguet, Philippines
            <br> <abbr title="Phone">P:</abbr> +63 74 442 6883 </p>
        </div>
        <div class="align-self-center col-lg-1 col-3">
          <a class="text-gray-dark" href="https://www.facebook.com/SLU-Summit-460760980946282/" target="blank"><i class="fa fa-fw fa-facebook fa-3x"></i></a>
        </div>
        <div class="align-self-center col-3 col-lg-1">
          <a class="text-gray-dark" href="https://twitter.com/" target="blank"><i class="fa fa-fw fa-twitter fa-3x"></i></a>
        </div>
        <div class="align-self-center col-3 col-lg-1">
          <a class="text-gray-dark" href="https://plus.google.com/" target="blank"><i class="fa fa-fw fa-3x fa-google-plus"></i></a>
        </div>
        <div class="align-self-center col-3 col-lg-1">
          <a class="text-gray-dark" href="https://www.instagram.com/" target="blank"><i class="fa fa-fw fa-instagram fa-3x"></i></a>
        </div>
      </div>
    </div>
  </div>
  <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"></script>
  <script src="https://pingendo.com/assets/bootstrap/bootstrap-4.0.0-alpha.6.min.js"></script>
</body>

</html>