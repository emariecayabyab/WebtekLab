<%-- 
    Document   : searchPage
    Created on : 07 10, 17, 3:23:53 PM
    Author     : s326lab
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Page</title>
    </head>
    <body>
        <table> 
            <thead>
                <th>Last Name
                <th>First Name
                <th>idno
            </thead> 
            
            <% try{
            String searchUser = request.getParameter("searchkey"); 
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/underscore", "root", "");
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM users WHERE status=? AND (firstname=? OR lastname=? OR idno=?) ORDER BY idno");
            
            ps.setString(1, "approved");
            ps.setString(2, searchUser);
            ps.setString(3, searchUser);
            ps.setString(4, searchUser);
            
            ResultSet rs = ps.executeQuery();
            
            if(rs.first()) {
                do { %>
            <tr>
                <td> <%=rs.getString("lastname")%>
                <td> <%=rs.getString("firstname")%>
                <td> <%=rs.getString("idno")%>
                    <form action="AddFriend" method = "POST">
                        <input type="hidden" name="idno" value ="<%=rs.getString("idno")%>">
                        <td> <button type = "submit" name = "AddFriend"> Add Friend</button>
                    </form>
            </tr>
               <% } while(rs.next());
            } else {
            }
           
        } catch(Exception e){
            		
	}%>
        </table>
    </body>
</html>
