<%-- 
    Document   : register
    Created on : 07 4, 17, 2:39:23 PM
    Author     : s326lab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Page</title>
    </head>
    <body>
        <form action="Register" method="POST" accept-charset="UTF-8">
            <input type="number" placeholder="Enter ID Number" name="idno" required>
            <input type="emai;" placeholder="Enter E-mail" name="email" required>
            <input type="password" placeholder="Enter Password" name="password" required>
            <input type="text" placeholder="Enter First Name" name="firstname" required>
            <input type="text" placeholder="Enter Last Name" name="lastname" required>
            <button type="submit">Register</button>
            <button type="reset">Reset</button>
        </form>
    </body>
</html>
