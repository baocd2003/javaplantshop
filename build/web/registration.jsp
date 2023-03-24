<%-- 
    Document   : registration
    Created on : Mar 8, 2023, 6:11:18 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel='stylesheet' href="css/register.css" type='text/css'>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Chakra+Petch&display=swap" rel="stylesheet">
        <title>JSP Page</title>
    </head>
    <body>
        <header>
            <%@include file="header.jsp" %>
        </header>
        <div class="regis">
        <form action="mainController" method="post" class="regis-form">
            <h1 class="r-title">Register</h1>
            <table>
                <tr><td class="r-label">Email</td><br>
                    <td><input type="text" name="txtemail" required="" ></td></tr>
                <tr><td class="r-label">Full Name</td>
                    <td><input type="text" name="txtfullname" required="" ></td></tr>
                <tr><td class="r-label">Password</td>
                    <td><input type="password" name="txtpassword" required="" ></td></tr>
                <tr><td class="r-label">Phone</td>
                    <td><input type="text" name="txtphone" required="" ></td></tr>
            </table>
            <input type="submit" value="Register" name="action" class="log">
        </form>
        </div>
            <h3 style="color:red;margin-left:20px;margin-top:20px">${requestScope.error}</h3>
        <footer>
            <%@include file="footer.jsp" %>
        </footer>
    </body>
</html>
