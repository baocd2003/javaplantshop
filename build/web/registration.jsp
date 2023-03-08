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
        <title>JSP Page</title>
    </head>
    <body>
        <header>
            <%@include file="header.jsp" %>
        </header>
        <form action="mainController" method="post">
            <table>
                <tr><td>Email</td>
                    <td><input type="text" name="txtemail" required="" ></td></tr>
                <tr><td>Full Name</td>
                    <td><input type="text" name="txtfullname" required="" ></td></tr>
                <tr><td>Password</td>
                    <td><input type="password" name="txtpassword" required="" ></td></tr>
                <tr><td>Phone</td>
                    <td><input type="text" name="txtphone" required="" ></td></tr>
            </table>
            <input type="submit" value="register" name="action">
        </form>
        <footer>
            <%@include file="footer.jsp" %>
        </footer>
    </body>
</html>
