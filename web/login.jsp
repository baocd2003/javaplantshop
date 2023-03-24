<%-- 
    Document   : login
    Created on : Mar 10, 2023, 9:25:31 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel='stylesheet' href="css/login.css" type='text/css'>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Chakra+Petch&display=swap" rel="stylesheet">
    <body>
        
        <header>
            <%@include file="header.jsp" %>
        </header>
        <form action="loginServlet" method = "post" class="form-log">
            <h1>Login</h1
            <p>Email</p>
            <input type="text" name="txtemail" placeholder="enter email" required=""/><br>
            <p>Password</p>
            <input type="password" name="txtpassword" placeholder="enter password" required=""/><br>
            <input type ="submit" value="login" class="log"/>
        </form>   
        <h3 style="color: red;margin-top:20px;margin-left:20px">${requestScope.warning}</h3>
        <footer>
            <%@include file="footer.jsp" %>
        </footer>
    </body>
</html>
