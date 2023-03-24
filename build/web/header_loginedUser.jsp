<%-- 
    Document   : header_loginedUser
    Created on : Mar 8, 2023, 9:27:20 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel='stylesheet' href="css/headerUser.css" type='text/css'>
         <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
        <title>JSP Page</title>
        <style>
            .down{
                display:block;
            }
        </style>
    </head>
    <body>
         <nav>
            <ul>
                <div class="nav-header">
                <li><a href="index.jsp">Home</a></li>
                <li><a href="changeProfile.jsp">Change Profile</a></li>
                <li id="menu" ><a href="#" onclick="handeClick()">Orders</a></li>
                <div id="down">
                    <li><a href="mainController?action=getCompletedOrder">Completed Orders</a></li>
                    <li><a href="mainController?action=getCanceledOrder">Canceled Orders</a></li>
                    <li><a href="mainController?action=getProcessingOrder">Processing Orders</a></li>
                </div>                
                <li><a href="mainController?action=viewcart">View Cart</a></li>
                <li><a href="mainController?action=logout">Log Out</a></li>
                <li class="date-form">
                    <form action="mainController" method="get">
                        <table>
                            <tr>
                                <td>Order date</td>
                                <td><input type="date" name="from"></td>
                            </tr>
                            <tr>
                                <td>Received date</td>
                                <td><input type="date" name="to"></td>
                            </tr>
                            <tr><td></td><td><button type="submit" value="getAllOrder" name="action" class="btn">Get All Orders</button></td></tr>
                        </table>
                    </form>
                </li>
                </div>
            </ul>
                
        </nav>
    </body>
    
    <script>
        const btn = document.querySelector("#menu");
        let menu = document.querySelector("#down");
        let count = 0;
        function handeClick(){
            count++;
            if(count%2 === 1){
                menu.style.display = "block";               
            }else{
                menu.style.display = "none";  
            }
        };
    </script>
    
</html>


