<%-- 
    Document   : index
    Created on : Mar 8, 2023, 6:04:25 AM
    Author     : Admin
--%>

<%@page import="dao.PlantDAO"%>
<%@page import="dto.Plant"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
        <link rel='stylesheet' href="css/mycss.css" type='text/css'>
        <title>JSP Page</title>
        <style>
            .banner{
                overflow: hidden;
                position:relative;
            }
            .b-title{
                position: absolute;
                top:10%;
                left:50%;
                transform: translate(-50%,-50%);
                font-size:40px;
                font-weight:800;
            }
            .b-but{
                position: absolute;
                top:20%;
                left:50%;
                transform: translate(-50%,-50%);
                color: #224229;
                background: #f6cfb2;
                border-radius: 25px!important;
                font-size: 16px;
                outline: none!important;
                padding: 16px 32px!important;
                font-weight:bold;
                transition:all ease 0.3s;
                cursor: pointer;
            }
            .b-but:hover{
                color:#f6cfb2;
                background:#224229;
            }
        </style>
    </head>
    <body>
        <header>
            <%@include file="header.jsp" %>
        </header>
        <section>
            <div class="banner">
                <h1 class="b-title">Fresh Finds For Spring</h1>
                <div class="b-but">Shop New Arrivals</div>
                <img src="images/banner.jpg">
            </div>
            <div class="product-wrap">
                <div class="pro-container">
            <%
                String keyword = request.getParameter("keyword");
                String keysearch = request.getParameter("keysearch");
                ArrayList<Plant> list = new ArrayList<>();
                String[] tmp = {"out of stock","available"};
                if(keyword == null && keysearch == null){
                    list = PlantDAO.getPlants("", "");
                }else{
                    list = PlantDAO.getPlants(keyword, keysearch);
                }
                if(list!=null && !list.isEmpty()){
                    for(Plant p :list){%>
                    <div class = "product" id="pro">
                        <div class="card">
                            <div class="img-wrap"><img src='<%= p.getImgpath() %>'></div>
                            <div class="blank"></div>
                            <div class="text-wrap">
                            <p><%= p.getName() %></p>
                            <p>Price: <%= p.getPrice() %>$</p>
                            <p>Category: <%= p.getCatename() %></p>
                            <p>Status: <%= tmp[p.getStatus()] %></p>
                            </div>
                            
                            <% 
                                if(p.getStatus() == 1){%>
                                    <button><a href="mainController?action=addtocart&pid=<%= p.getId() %>">Add to cart</a></button>
                                <%}
                                else {
                                %> <button>Out of stock</button>
                                <%}%>    
                        </div>
                    </div>
                <%    }
                }
                    else{
                %>
                <%}%>
                </div>
            </div>
        </section>        
        <footer>
            <%@include file="footer.jsp" %>
        </footer>

    </body>
</html>
