<%-- 
    Document   : viewCart
    Created on : Mar 16, 2023, 7:24:42 AM
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
    </head>
    <body>
        <c:choose>
            <c:when test="${sessionScope.admin != null}">
                <c:set var="noti" value="That's not a page for admin" scope="request"/>
                <jsp:forward page="adminPage.jsp"/>
            </c:when>
            <c:otherwise>
                <c:choose>
                    <c:when test="${sessionScope.user == null}">
                        <header>
                            <c:import url="header.jsp"/>
                        </header>
                    </c:when>
                    <c:otherwise>
                        <header>
                            <c:import url="header_loginedUser.jsp"/>
                        </header>
                    </c:otherwise>
                </c:choose>
                <c:choose>
                    <c:when test="${requestScope.noti != null}">
                        <div class="back">
                        <i class="fa fa-angle-left"></i><a href="mainController?action=">Back to Shop</a>
                        </div>
                        <h3 style="color: greenyellow">${requestScope.noti}</h3>
                        <h3 style="color: red">${requestScope.warning}</h3>
                    </c:when>
                    <c:when test="${sessionScope.cart.isEmpty() || sessionScope.cart == null}">
                        <i class="fa fa-angle-left"></i><a href="mainController?action=">Back to Shop</a>
                        <h3>Your cart is empty</h3>
                    </c:when>
                    <c:otherwise>
                        <div class="back">
                        <i class="fa fa-angle-left"></i><a href="mainController?action=">Back to Shop</a>
                        </div>
                        <div class="wrap" style=";padding: 0 30px">
                    <table border="1" style="text-align: center; width: 100%">
                        <thead style="background: #224229; color: #fcf9f3">
                                <tr>
                                    <th>Product ID</th>
                                    <th>Image</th>
                                    <th>Price</th>
                                    <th>Quantity</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="cartitem" items="${sessionScope.cart}">
                                    <c:set var="cartKey" value="${cartitem.key}" scope="page"/>
                                    <tr>
                                        <td><a href="mainController?action=getPlant&pid=${cartitem.key}">${cartitem.key}</a></td>
                                        <td ><img src='${requestScope.imgList.get(cartKey)}' class="product" style="width: 20%"/></td>
                                        <td>${requestScope.priceList.get(cartKey)}</td>
                                        <td>
                                            <form action="mainController" method="post"  >
                                                <input type="number" name="quantity" min="1" value="${cartitem.value}">
                                                <input type="hidden" name="pid" value="${cartitem.key}">
                                                <input type="submit" name="action" value="updateQuantity" style="padding:6px">
                                            </form>
                                        </td>
                                        <td>
                                            <form action="mainController" method="post" class="form-log">
                                                <input type="hidden" name="pid" value="${cartitem.key}">
                                                <input type="submit" name="action" value="deleteItemCart" style="padding:6px">
                                            </form>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                        </div>
                        <h3 style="margin-left:30px">Total money: ${requestScope.totalMoney}$</h3>
                        <form action="mainController" method="post" class="form-log">
                            <input type="submit" value="saveOrder" name="action" style="margin:20px;" class="log">
                        </form>
                        
                    </c:otherwise>
                </c:choose>
                <footer>
                    <c:import url="footer.jsp"/>
                </footer>
            </c:otherwise>
        </c:choose>
    </body>
</html