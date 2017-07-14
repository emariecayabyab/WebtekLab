<%-- 
    Document   : dashboard
    Created on : 07 4, 17, 3:06:44 PM
    Author     : s326lab
--%>

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
        <link rel="stylesheet" type="text/css" href="CSS/dash.css">
        <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
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
        <ul>
            <li><a href="dashboard.jsp"><img src="images/temporary-logo.png" alt="Mountain View" style="width:80px;height:60px;"></a></li>
            <li><a href="dashboard.jsp">Home</a></li>
            <li><a href="dashboard.jsp">Profile</a></li>
            <li><a href="dashboard.jsp">Friends</a></li>
            <li><a href="dashboard.jsp">Group</a></li>
            <li style="float:right"><a href="logout.jsp">Log Out</a></li>
            <li style="float:right"><a href="dashboard.jsp">Edit Profile</a></li>
            <li style="float:center"><a href="logout.jsp">Log Out</a></li>
 		<form action="searchPage.jsp" method="post" class="search" >
                <input type="text" name="searchkey" placeholder="Search User" class="first">
                <button type="submit" name="submit" class="first">Search</button>
 		</form>
            </li>
            
 	</ul>
    
 
        <div class="three">
        <h1>Hello <%= session.getAttribute("firstname") + " " + session.getAttribute("lastname") %>!</h1>
        
        
        <div class="title">
        <form action="Post" method="POST">
            <textarea rows="3" name="content" placeholder="What is on your mind?" class></textarea>
            <input type="hidden" name="idno" value="<%=session.getAttribute("idno")%>"><br>
            <input type="radio" name="privacy" value="public" checked class="in"><label>Public</label>
            <input type="radio" name="privacy" value="private" class="in"><label>Private</label>
            <button type="submit" name="post" class="in"> Post</button>
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
        <div style="color: #636c72" class="dash"> <%=rs.getString("firstname") + " " + rs.getString("lastname")%><br>
            <p style="color:black" class="date"><%= rs.getString("date") %></p>
            
            
        <p class="dash"> <%= rs.getString("content") %> </p> </div>
            <% } while (rs.next());
            } %>    
            </div>
        </div>
    </body>
</html>
