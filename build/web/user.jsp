

<%@page import="sample.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Page</title>
    </head>
    <body>
        <%
            UserDTO user =(UserDTO)session.getAttribute("LOGIN_USER");
            if(user == null){
                return;
            }
        %>
        <h1>Hello User Role: <%= user.getFullName() %> </h1>
    </body>
</html>
