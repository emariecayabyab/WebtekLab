<%-- 
    Document   : profile
    Created on : Jul 14, 2017, 12:28:14 PM
    Author     : Colvin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile Page</title>
    </head>
    <body>
        <h1>Welcome <%= session.getAttribute("firstname") + " " + session.getAttribute("lastname") %>!</h1>
        <form action="EditProfile" method="POST">
            <input type="hidden" name="idno" value="<%= session.getAttribute("idno")%>">
            <button type="submit">Edit Profile</button>
        </form>
        
        <h2>Your Recent Posts:</h2>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/underscore", "root", "");
          
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM posts WHERE idno=? ORDER BY date");
            ps.setString(1, ""+session.getAttribute("idno"));
            ResultSet rs = ps.executeQuery();
            
            if(rs.first()){
                do {
                    %> <p><%= rs.getString("content")%></p>
                    <p><%= rs.getString("date")%></p>
               <% }while(rs.next());
            }
        %>
    </body>
</html>
