<%-- 
    Document   : orderDetail
    Created on : Mar 11, 2023, 1:55:38 PM
    Author     : Admin
--%>

<%@page import="dao.OrderDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dto.OrderDetail"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
        <style>
            *{
                font-family:'Poppins', sans-serif;
            }
        </style>
    </head>
    <body>
        <header>
            <c:import url="header_loginedUser.jsp"/>
        </header>
        <section>
            <p style="margin:30px"><a href="personalPage.jsp" style="color:#224229;text-decoration: none">View all orders</a></p>            
        </section>
        <section>
            <%
                String orderid = request.getParameter("orderid");
                if (orderid != null) {
                    int orderID = Integer.parseInt(orderid.trim());
                    ArrayList<OrderDetail> list = OrderDAO.getOrderDetail(orderID);
                    if (list != null && !list.isEmpty()) {
                        int money = 0;
            %>
            <div style="padding:0 30px;">
            <table border="1" style="text-align: center; width: 100%;font-family:'Poppins', sans-serif;">
                <thead style="background: #224229; color: #fcf9f3">
                    <tr>
                        <td>Order ID</td>
                        <td>Plant ID</td>
                        <td>Plant Name</td>
                        <td>Image</td>
                        <td>Quantity</td>
                        <td>Price</td>
                    </tr>
                </thead>
                <%  for (OrderDetail od : list) {%>

                <tr>
                    <td><%= od.getOrderID()%></td>
                    <td><%= od.getPlantID()%></td>
                    <td><%= od.getPlantName()%></td>
                    <td><img src='<%= od.getImgPath()%>' style="width:20%;"></td>
                    <td><%= od.getQuantity()%></td>
                    <td><%=od.getQuantity()%><%=od.getPrice()%>$</td>
                    <td></td>
                    <% money = money + od.getPrice() * od.getQuantity(); %>                                                                                                
                </tr>


                <% }%>
            </table>
            </div>
            <h3 style="font-size:36px;margin-top:20px;margin-left:30px;">Total money: <%= money%>$</h3>
            <%  }
            %>                                      
            <%    }%>            
        </section>
        <footer>
            <c:import url="footer.jsp"/>
        </footer>


    </body>
</html>
