<%-- 
    Document   : addPlant
    Created on : Mar 18, 2023, 12:04:54 AM
    Author     : Admin
--%>

<%@page import="dao.CategoryDAO"%>
<%@page import="dto.Category"%>
<%@page import="dto.Category"%>
<%@page import="dao.PlantDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Chakra+Petch&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel='stylesheet' href="css/login.css" type='text/css'>
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
                <%
                    ArrayList<Category> catelist = CategoryDAO.getCategories();
                    ArrayList<String> imgList = PlantDAO.getImgPath();
                    request.setAttribute("imgList", imgList);
                    request.setAttribute("categoryList", catelist);
                %>
                <div class="back">
                <i class="fa fa-angle-left"></i><a href="mainController?action=managePlants" >Back to Manage Plant Page</a>
                </div>
                <form action="mainController" method="post" class="form-log" style="font-family:'Poppins', sans-serif;">
                    <h1>Add New Plant</h1>
                    <table>
                        <tr><th>Plant Name</th><td><input type="text" name="txtname" required="" placeholder="Input the name"/></td></tr>
                        <tr><th>Price</th><td><input type="number" name="txtprice" required="" placeholder="Input price"/></td></tr>
                        <tr>
                            <th>Image</th>
                            <td>
                                <select name="imgpath">
                                    <c:forEach var="image" items="${requestScope.imgList}">
                                        <option value="${image}">${image}</option>
                                    </c:forEach>
                                </select>
                            </td>
                        </tr>
                        <tr><th>Description</th><td><input type="text" name="txtdes" required="" placeholder="Input description"/></td></tr>
                        <tr>
                            <th>Category</th>
                            <td>
                                <select name="cateid">
                                    <c:forEach var="cate" items="${requestScope.categoryList}">
                                        <option value="${cate.cateID}">${cate.cateName}</option>
                                    </c:forEach>
                                </select>
                            </td>
                        </tr>
                    </table>
                    <input type="submit" name="action" value="addNewPlant" class="log" style="margin-left: 36px;
    margin-top: 36px;"/>
                </form>
                <h3 style="margin-top: 36px;
            color: red;
            margin-left: 180px;">
    ${requestScope.error}</h3>
                <footer>
                    <c:import url="footer.jsp"/>
                </footer>
            </c:otherwise>
        </c:choose>
    </body>
</html>
