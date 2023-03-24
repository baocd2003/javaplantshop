<%-- 
    Document   : changeProfile
    Created on : Mar 13, 2023, 7:29:37 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel='stylesheet' href="css/login.css" type='text/css'>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Chakra+Petch&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>JSP Page</title>
    </head>
    <body>
        <header>
            <%@include file="header_loginedUser.jsp" %>
        </header>
        <div class="back">
            <i class="fa fa-angle-left"></i><a href="personalPage.jsp" >Back to Personal Page</a>
        </div>        
        <form action="mainController" method="post" class="form-log">
            <h1>Change your Profile info here</h1>
            <p>New Full Name</p>
            <input type="text" name="txtfullname" >

            <p>New Phone Number</p>
            <input type="text" name="txtphone" >

            <td>New Password</td>
            <input type="password" name="txtpass" >

            <button type="submit" value="updateProfile" name="action" class="log1">Update Profile</button>
        </table>
    </form>
            <h3 style="color:yellowgreen;margin-left: 20px;margin-top:20px;">${requestScope.noti}</h3>
            <h3 style="color:red;margin-left: 20px;margin-top:20px;">${requestScope.warning}</h3>
    <footer>
        <%@include file="footer.jsp" %>
    </footer>
</body>
</html>
