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
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    </head>
    <body>
         <header>
             <div class="nav">
             <div class="option">
                <p class="log-option"><a href="index.jsp">Home</a></p>
                <p class="log-option"><a href="registration.jsp">Register</a></p>
                <p class="log-option"><a href="login.jsp">Login</a></p>
             </div>
             <div class="icon">
                <p class="acc-icon"><a href="personalPage.jsp"><i class='fas fa-user-alt' style='font-size:24px'></i></a></p>
                <p class="log-option"><a href="mainController?action=viewcart"><i class='fas fa-cart-plus' style='font-size:24px'></i></a></p>       
             </div>
             </div>
                 
            <form action="mainController" method="post">
                <input type="text" name="keyword" class="seacrh-inp">
                <select name="keysearch">
                    <option value="byname">by name</option>
                    <option value="bycategory">by category</option>                 
                </select>
                <input type="submit" name ="action" value="Search" class="search-form">                 
            </form>
        </header>
    </body>
</html>
