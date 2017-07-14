<%-- 
    Document   : dashboard
    Created on : 07 4, 17, 3:06:44 PM
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
        <title>Main Dashboard</title>
    </head>
    <body>
        <ul>
            <li><a href="dashboard.jsp">Home</a>
            <li><a href="profile.jsp">Profile</a>
            <li><a href="friends.jsp">Friends</a>
            <li><a href="dashboard.jsp">Groups</a>
            <li><a href="logout.jsp">Logout</a>
        </ul>
        
        <form action="searchPage.jsp" method="post">
            <input type="text" name="searchkey" placeholder="Search User">
            <button type="submit" name="submit">Search</button>
        </form>
        
        <h1>Hello <%= session.getAttribute("firstname") + " " + session.getAttribute("lastname") %>!</h1>
        
        <form action="Post" method="POST">
            <textarea rows="3" name="content" placeholder="What is on your mind?"></textarea>
            <input type="hidden" name="idno" value="<%=session.getAttribute("idno")%>">
            <input type="radio" name="privacy" value="public" checked><label>Public</label>
            <input type="radio" name="privacy" value="private"><label>Private</label>
            <button type="submit" name="post">Post</button>
        </form>
        
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/underscore", "root", "");
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM posts JOIN users ON posts.idno=users.idno WHERE privacy=? ORDER BY date");
            ps.setString(1, "public");
            ResultSet rs = ps.executeQuery();
            
            PreparedStatement ps2 = conn.prepareStatement("SELECT * FROM posts JOIN users ON posts.idno=users.idno JOIN friends ON posts.idno=friends.f1 WHERE (privacy=? AND f2=?) ORDER BY date");
            
            ps2.setString(1, "private");
            ps2.setString(2, ""+session.getAttribute("idno"));
            ResultSet rs2 = ps2.executeQuery();
            
            if(rs.first()){
                do {
        %><p style="color: blue">Posted by: <%=rs.getString("firstname") + " " + rs.getString("lastname")%>, <%=rs.getString("posts.date")%></p>
        <p> <%= rs.getString("content") %></p>
            <% } while (rs.next());
            }
            if(rs2.next()){
                do{
                   %> <p style="color: blue">Posted by: <%=rs2.getString("firstname") + " " + rs2.getString("lastname")%>, <%=rs2.getString("posts.date")%></p>
                    <p> <%= rs2.getString("content") %></p>
               <% } while(rs2.next());
            }
            %>    
        
    </body>
</html>
