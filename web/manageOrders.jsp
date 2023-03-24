<%-- 
    Document   : manageOrders
    Created on : Mar 18, 2023, 10:22:22 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
        <style>
            a:hover{
                border-bottom: 1px solid #224229;
            }
            form{
                margin-left:30px;
                margin-top:30px;
            }
            form input,button{
                font-family:'Poppins', sans-serif;
                padding:6px 10px;
            }
            .log{
                color:#fcf9f3;
                background:#224229;
                cursor:pointer;
                transition:all ease 0.3s;
            }
            .log:hover{
                color: #224229;
                background:#fcf9f3;
                border:1px solid #224229;
            }
        </style>
    </head>
    <body>
        <c:choose>
            <c:when test="${sessionScope.admin == null}">
                <c:set var="warning" value="You need to log in as Admin to access" scope="request"/>
                <jsp:forward page="login.jsp"/>
            </c:when>
            <c:otherwise>
                <header>
                    <c:import url="header_loginedAdmin.jsp"/>
                </header>
                <div class="search-section" style="margin: 15px;">
                    <form action="mainController" method="post">
                        <table>
                            <tr>
                                <td>Order Date </td>
                                <td><input type="date" name="from" value="${param.from}" style="margin: 0 8px; border-radius: 5px; border: 1px solid;" id="from-date"></td>
                                <td>Received Date </td>
                                <td><input type="date" name="to" value="${param.to}" style="margin: 0 8px; border-radius: 5px; border: 1px solid;" id="to-date"></td>
                                <td><button type="submit" value="searchOrderByDate" name="action" class="log" style="padding: 4px;" id="btn">Search</button></td>
                                <td><p style="display:none" id="noti">Invalid recieved date</p></td>
                            </tr>
                        </table>
                    </form>
                </div>
                <br/>
                <form action="mainController" method="post">
                    <input type="number" min="1" name="txtsearch" value="${param.txtsearch}">
                    <input type="submit" value="searchByCustomerID" name="action" class="log">
                </form><br/>
                <c:choose>
                    <c:when test="${requestScope.orderList.isEmpty()}">
                        <h3>No result</h3>
                    </c:when>
                    <c:otherwise>
                        <div class="ord-wrap" style="padding:0 30px">
                        <table border="1" style="text-align: center; width: 100%;font-family:'Poppins', sans-serif;">
                        <thead style="background: #224229; color: #fcf9f3">
                                <tr>
                                    <th>Order ID</th>
                                    <th>Order Date</th>
                                    <th>Ship Date</th>
                                    <th>Status</th>
                                    <th>Account ID</th>
                                    <th>Action</th>
                                </tr>  
                            </thead>
                            <tbody>
                                <c:forEach var="order" items="${requestScope.orderList}">
                                    <tr>
                                        <td>${order.orderID}</td>
                                        <td>${order.orderDate}</td>
                                        <td>
                                            <c:choose>
                                                <c:when test="${order.shipDate == null}">N/A</c:when>
                                                <c:otherwise>${order.shipDate}</c:otherwise>
                                            </c:choose>                  
                                        </td>                            
                                        <td><c:choose>
                                                <c:when test="${order.status eq 1}">Processing Order</c:when>
                                                <c:when test="${order.status eq 2}">Completed Order</c:when>
                                                <c:when test="${order.status eq 3}">Cancelled Order</c:when>
                                            </c:choose></td>
                                        <td>${order.accID}</td>
                                        <td>
                                            <c:if test="${order.status eq 1}">
                                                <a href="mainController?action=completeOrder&orderid=${order.orderID}" style="color:black;text-decoration: none">Complete Order</a>
                                            </c:if>
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
            </c:otherwise>
        </c:choose>
    </body>
</html>

<script>
    const btn = document.querySelector("#btn");
    let from = document.querySelector("#from-date");
    let to = document.querySelector("#to-date");
    let noti = document.querySelector("#noti");
    btn.addEventListener('click', function() {
        if(!to.value){
            to.value = from.value;           
        }
    });
    
    to.addEventListener('click', function(){
          if(new Date(to.value).getTime() < new Date(from.value).getTime()){
            noti.style.display = "block";           
        }     
    });

</script>
