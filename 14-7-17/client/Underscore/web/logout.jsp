<%-- 
    Document   : logout
    Created on : Jul 11, 2017, 1:58:33 AM
    Author     : Colvin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
    </head>
    <body>
        <% session.invalidate();
            response.sendRedirect("index.jsp");
        %>
    </body>
</html>
