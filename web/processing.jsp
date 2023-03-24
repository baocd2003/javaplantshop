<%-- 
    Document   : processing
    Created on : Mar 14, 2023, 10:44:22 AM
    Author     : Admin
--%>

<%@page import="dao.OrderDAO"%>
<%@page import="dto.Order"%>
<%@page import="dto.Order"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dto.Account"%>
<%@page import="dto.Account"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <c:if test="${param.action == 'cancel'}">
            <h4 style="color: green; font-size: 1em;">You have cancel order with ID ${param.orderid}. Go to
                <a href="mainController?action=getCanceledOrder">Canceled Order Page</a> to check</h4>
            </c:if>
            <c:choose>
                <c:when test="${requestScope.processinglist == null}">
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
                            <c:forEach var="ord" items="${requestScope.processinglist}">
                                <tr>
                                    <td>${ord.orderID}</td>
                                    <td>${ord.orderDate}</td>
                                    <td>
                                        <c:choose>
                                            <c:when test="${ord.shipDate == null}">N/A</c:when>
                                            <c:otherwise>${ord.shipDate}</c:otherwise>
                                        </c:choose>
                                    </td>
                                    <td>Processing</td>
                                    <td>
                                        <a href="mainController?action=cancel&orderid=${ord.orderID}">Cancel Order</a>
                                    </td>    
                                    <td>   
                                        <a href="orderDetail.jsp?orderid=${ord.orderID}">Check Orders' Detail</a>

                                    </td>

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
