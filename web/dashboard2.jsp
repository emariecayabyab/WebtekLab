<%-- 
    Document   : dashboard
    Created on : 07 4, 17, 3:06:44 PM
    Author     : s326la
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
        <link rel="stylesheet" type="text/css" href="assets/css/dash.css">
        <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <link rel="stylesheet" href="bootstrap-3.3.7-dist\css\bootstrap.min.css">
        <title>Main Dashboard</title>
    </head>
    <body>
        <!-- <ul>
            <li><a href="dashboard.jsp">Home</a>
            <li><a href="dashboard.jsp">Profile</a>
            <li><a href="dashboard.jsp">Friends</a>
            <li><a href="dashboard.jsp">Groups</a>
            <li> 
                <form action="searchPage.jsp" method="post">
                    <input type="text" name="searchkey" placeholder="Search User" class="first">
                    <button type="submit" name="submit" class="first">Search</button>
                </form>
            </li>
            <li style="float:right"><a href="logout.jsp">Logout</a>
        </ul> -->
        <div>
        <ul>
            <li><a href="dashboard2.jsp"><img src="images/temporary-logo.png" alt="Mountain View" style="width:30px;height:30px;"></a></li>
            <li><a href="dashboard2.jsp">Home</a></li>
            <li><a href="profile.jsp">Profile</a></li>
            <li><a href="friends.jsp">Friends</a></li>
            <li style="float:right"><a href="logout.jsp">Log Out</a></li>
            <li style="float:right">
                <form style="float:right" action="searchPage.jsp" method="post" class="search" >
                <input type="text" name="searchkey" placeholder="Search User" class="first">
                <button type="submit" name="submit" class="first">Search</button>
 		</form>
            </li> 
 	</ul>
        </div>
    
 
        <div class="three">
        <h1>Hello <%= session.getAttribute("firstname") + " " + session.getAttribute("lastname") %>!</h1>
        
        
        <div class="title">
        <form action="Post" method="POST">
            <textarea rows="3" name="content" placeholder="What is on your mind?" class></textarea>
            <input type="hidden" name="idno" value="<%=session.getAttribute("idno")%>"> <br>
            <div class="two">
            <label for="image-input">
               <a title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Picture"><i class="fa fa-picture-o fa-2x" aria-hidden="true"></i></a>
            </label>
            <input id="image-input" type="file" accept="image/*" style="display: none;"/>
            <label for="video-input">
                <a title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Video"><i class="fa fa-video-camera fa-2x" aria-hidden="true"></i></a>
            </label>
            <input id="video-input" type="file" accept="video/*" style="display: none;"/>
            <label for="file-input">
                <a title="" data-toggle="tooltip" data-placement="bottom" data-original-title="File"><i class="fa fa-paperclip fa-2x" aria-hidden="true"></i></a>
            </label>
                <input id="file-input" type="file" accept="file_extension" style="display: none;"/>
            <input type="radio" name="privacy" value="public" checked class="in"><label>Public</label>
            <input type="radio" name="privacy" value="private" class="in"><label>Private</label>
            <button type="submit" name="post" class="in"> Post</button>
            </div>
        </form>
        </div>
        <div class="yes">
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/underscore", "root", "");
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM posts JOIN users ON posts.idno=users.idno");
            ResultSet rs = ps.executeQuery();
            
            if(rs.first()){
                do {
        %>
        <div style="color: #636c72" class="dash"> <img class="img1" src="https://lut.im/7JCpw12uUT/mY0Mb78SvSIcjvkf.png" width="50px" height="50px" style= "margin-right:15px ; margin-top:7px;"> <%=rs.getString("firstname") + " " + rs.getString("lastname")%><br>
            <p style="color:black" class="date"><%= rs.getString("date") %></p>
            
            
        <p class="dash"> <%= rs.getString("content") %> </p> </div>
            <% } while (rs.next());
            } %>    
            </div>
        </div>
    </body>
</html>
