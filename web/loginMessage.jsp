<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Message</title>
    </head>
    <body>
        <%
            if(session.getAttribute("idno")!=null){
                %><h1>Hello  <%=session.getAttribute("firstname") +  " " + session.getAttribute("lastname")%>!</h1>
                <h2><a href="dashboard2.jsp">Proceed to your Dashboard</a></h2>
            <%} else {
                %><h1>Please report to the admin for the approval of your account!</h1>
                <h2><a href="index.jsp">Proceed to Login Portal</a></h2>
            <%}
        %>        
    </body>
</html>
