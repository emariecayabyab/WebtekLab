<%-- 
    Document   : friends
    Created on : Jul 11, 2017, 3:47:52 PM
    Author     : Colvin
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
        <title>Friends</title>
    </head>
    <body>
        <ul>
            <li><a href="dashboard.jsp">Home</a>
            <li><a href="dashboard.jsp">Profile</a>
            <li><a href="friends.jsp">Friends</a>
            <li><a href="dashboard.jsp">Groups</a>
            <li><a href="logout.jsp">Logout</a>
        </ul>
        
        <form action="searchPage.jsp" method="post">
            <input type="text" name="searchkey" placeholder="Search User">
            <button type="submit" name="submit">Search</button>
        </form>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/underscore", "root", "");
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM requests JOIN users ON users.idno=requests.fromID WHERE (toID=? AND requests.status=?) ORDER BY requestID");
            ps.setString(1, ""+session.getAttribute("idno"));
            ps.setString(2, "pending");
            ResultSet rs = ps.executeQuery();
           
            if (rs.first()) {
                do{
                    %> <p> <%= rs.getString("firstname") + " " + rs.getString("lastname") + " wants to add you as a friend." %></p>
                    <form action="FriendAction" method="POST">
                        <input type="hidden" name="idno" value="<%=session.getAttribute("idno")%>">
                        <input type="hidden" name="fridno" value="<%=rs.getString("fromID")%>">
                        <button name="action" value="accept">Accept</button>
                        <button name="action" value="decline">Decline</button>
                    </form>
              <%  } while(rs.next()); 
            }
        %> 
        
        <p>Friends</p>
        <%
            PreparedStatement ps2 = conn.prepareStatement("SELECT * FROM friends JOIN users ON users.idno=friends.f2 WHERE f1=? ORDER BY f2");
            ps2.setString(1, ""+session.getAttribute("idno"));
            ResultSet rs2 = ps2.executeQuery();
            
            if(rs2.first()){
                do{
                    %> <p><%= rs2.getString("firstname") + " " + rs2.getString("lastname")  %></p>
                    <% } while(rs.next());
            }
        %>
    </body>
</html>
