<%-- 
    Document   : completed
    Created on : Mar 13, 2023, 9:51:45 AM
    Author     : Admin
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="dao.OrderDAO"%>
<%@page import="dto.Order"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dto.Account"%>
<%@page import="dao.AccountDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel='stylesheet' href="css/completed.css" type='text/css'>
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>JSP Page</title>
    </head>
    <body>
        <header>
            <c:import url="header_loginedUser.jsp"/>
        </header>
        <div class="back">
        <i class="fa fa-angle-left"></i><a href="mainController?from=&to=&action=getAllOrder" >Go Back To Personal Page</a>
        </div>
        <c:choose>
            <c:when test="${requestScope.completedlist == null}">
                <h3>${requestScope.noti}</h3>
            </c:when>
            <c:otherwise>
                <div class="wrap">
                    <table border="1" style="text-align: center; width: 100%">
                        <thead style="background: #224229; color: #fcf9f3">
                            <tr>
                                <td>Order ID</td>
                                <td>Order Date</td>
                                <td>Ship Date</td>
                                <td>Order's status</td>
                                <td colspan="2">Action</td>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="ord" items="${requestScope.completedlist}">
                                <tr>
                                    <td>${ord.orderID}</td>
                                    <td>${ord.orderDate}</td>
                                    <td>
                                        <c:choose>
                                            <c:when test="${ord.shipDate == null}">N/A</c:when>
                                            <c:otherwise>${ord.shipDate}</c:otherwise>
                                        </c:choose>
                                    </td>
                                    <td>Completed</td>
                                    <td><a href="orderDetail.jsp?orderid=${ord.orderID}">Check Orders' Detail</a></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </c:otherwise>
        </c:choose>
        <footer>
            <c:import url="footer.jsp"/>
        </footer>


    </body>
</html>
