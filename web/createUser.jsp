

<%@page import="sample.user.UserError"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Page</title>
    </head>
    <body>
        <h1>Create new User</h1>
        <%
            UserError userError = (UserError)request.getAttribute("USER_ERROR");
            if(userError == null){
                userError = new UserError();
            }
        %>
        <form action="MainController" method="POST">
            User ID <input type="text" name="userID" required=""/>
            ${requestScope.USER_ERROR.getUserIDError()} </br>
           
            Full Name <input type="text" name="fullName" required=""/>
             ${requestScope.USER_ERROR.getFullNameError()} </br>
           
            Role ID <input type="text" name="roleID" required=""/>
              ${requestScope.USER_ERROR.getRoleIDError()} </br>
           
            Password <input type="password" name="password" required=""/></br>
            Confirm <input type="password" name="confirm" required=""/>
             ${requestScope.USER_ERROR.getConfirmError()} </br>
          
            <input type="submit" name="action" value="Create"/>
            <input type="reset" value="Reset"/>
              ${requestScope.USER_ERROR.getMessageError()} </br>
           
        </form>
    </body>
</html>
