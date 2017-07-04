<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <form action="Login" method="POST" accept-charset="UTF-8">
            <input type="text" placeholder="Enter ID Number" name="idno" required>
            <input type="password" placeholder="Enter Password" name="password" required>
            <button type="submit">Login</button>
            <a href="register.jsp">Not Yet a Member?</a>
        </form>
    </body>
</html>
