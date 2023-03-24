<%-- 
    Document   : personalPage
    Created on : Mar 8, 2023, 10:19:25 AM
    Author     : Admin
--%>

<%@page import="dao.OrderDAO"%>
<%@page import="dto.Order"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel='stylesheet' href="css/personal.css" type='text/css'>
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
        <title>JSP Page</title>
    </head>
    <body>
    <c:choose>
        <c:when test="${sessionScope.admin != null}">
            <c:set var="noti" value="That's not a page for admin" scope="request"/>
                <jsp:forward page="adminPage.jsp"/>
            </c:when>
            <c:when test="${sessionScope.user == null}">
                <c:set var="warning" value="Need to login to continue" scope="request"/>
                <jsp:forward page="login.jsp"/>
            </c:when>
            <c:otherwise>
                <header>
                    <c:import url="header_loginedUser.jsp"/>
                </header>
                <h1 class="welcome">Welcome back ${sessionScope.user.getFullname()}</h1>
                <c:choose>
                    <c:when test="${requestScope.orderlist == null}">
                        <h3>${requestScope.noti}</h3>
                    </c:when>
                    <c:otherwise>
                        <div style="padding:0 30px;">
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
                                <c:forEach var="ord" items="${requestScope.orderlist}">
                                    <tr>
                                        <td>${ord.orderID}</td>
                                        <td>${ord.orderDate}</td>
                                        <td>
                                            <c:choose>
                                                <c:when test="${ord.shipDate == null}">N/A</c:when>
                                                <c:otherwise>${ord.shipDate}</c:otherwise>
                                            </c:choose>
                                        </td>
                                        <td>
                                            <c:choose>
                                                <c:when test="${ord.status eq 1}">Processing</c:when>
                                                <c:when test="${ord.status eq 2}">Completed</c:when>
                                                <c:otherwise>Canceled</c:otherwise>
                                            </c:choose>
                                        </td>
                                        <td style='display:flex;justify-content: space-evenly'>
                                            <c:choose>
                                                <c:when test="${ord.status eq 3}">
                                                    <p><a href="mainController?action=reorder&orderid=${ord.orderID}">ReOrder</a></p>
                                                </c:when> 
                                                    <c:when test="${ord.status eq 1}">
                                                    <p><a href="mainController?action=cancel&orderid=${ord.orderID}">Cancel Order</a></p>
                                                </c:when> 
                                            </c:choose>
                                        </td>
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
            </c:otherwise>
        </c:choose>
    </body>
</html>
