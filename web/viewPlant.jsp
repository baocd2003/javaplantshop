<%-- 
    Document   : viewPlant
    Created on : Mar 16, 2023, 11:23:04 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel='stylesheet' href="css/completed.css" type='text/css'>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Chakra+Petch&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .wrap{
                display:flex;
                flex-wrap:wrap;
                padding:15px 30px;
                border:2px solid #224229;
                margin: 15px 30px;
            }
            table tr{
                margin-bottom:12px;
            }
           
        </style>
    </head>
    <body>
        <header>
            <c:import url="header.jsp"/>
        </header>
        <div class="back">
            <i class="fa fa-angle-left"></i><a href="mainController?action=viewcart">Back to cart</a>
        </div>
        <c:choose>
            <c:when test="${requestScope.plant == null}">
                <c:if test="${requestScope.error == null}">
                    <h3 style="color: red">Nothing to show here</h3>
                </c:if>
                <h3 style="color: red">${requestScope.error}</h3>
            </c:when>
            <c:otherwise>
                <div class="wrap">
                    <div class="img-wrap"><img src="${plant.imgpath}" style="width: 70%"/></div>
                <div>
                    <table>                     
                        <tr><th>Name:</th><td>${plant.name}</td></tr>
                        <tr><th>Price:</th><td>${plant.price}</td></tr>                       
                        <tr><th>Plant ID:</th><td>${plant.id}</td></tr>                   
                        <tr><th>Description:</th><td>${plant.description}</td></tr>
                        <tr><th>Status:</th>
                            <td>
                                <c:choose>
                                    <c:when test="${plant.status eq 1}">Available</c:when>
                                    <c:otherwise>Unavailable</c:otherwise>
                                </c:choose>
                            </td>
                        </tr>
                        <tr><th>Cate ID</th><td>${plant.cateid}</td></tr>
                        <tr><th>Category</th><td>${plant.catename}</td></tr>
                    </table>
                </div>
                
                </div>
                </c:otherwise>
            </c:choose>
        <footer>
            <c:import url="footer.jsp"/>
        </footer>
    </body>
</html>
