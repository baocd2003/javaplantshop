<%-- 
    Document   : header
    Created on : Mar 8, 2023, 6:04:02 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/header.css" />
    </head>
    <body>
         <header>
            <a>Home</a>
            <a href="registration.html">Register</a>
            <a href="login.html">login</a>
            <form action="searchServlet" method="post">
                <input type="text" required="" name="txtsearch">
                <select name="keysearch">
                    <option>byname</option>
                    <option>bycategory</option>                 
                </select>
                <input type="submit" name ="action">
                
            </form>
        </header>
    </body>
</html>
