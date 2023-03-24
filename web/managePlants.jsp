<%-- 
    Document   : managePlants
    Created on : Mar 18, 2023, 12:05:54 AM
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
            .log1{
                color:#fcf9f3;
                background:#224229;
                cursor:pointer;
                transition:all ease 0.3s;
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
                <form action="mainController" method="post">
                    <input type="text" name="txtsearch" placeholder="input plant name" value="${param.txtsearch}">
                    <input type="submit" value="searchPlant" name="action" class="log">
                    <button class="log1" style="margin-left: 300px"><a href="addPlantPage.jsp" style="color:#fcf9f3;text-decoration: none">Add new Plant</a></button>
                </form><br/>
                
                <h3 style="color: greenyellow">${requestScope.noti}</h3>
                <c:choose>
                    <c:when test="${requestScope.plantList.isEmpty()}">
                        <h3>No result</h3>
                    </c:when>
                    <c:otherwise>
                       <div class="plant-wrap" style="padding:0 30px">
                        <table border="1" style="text-align: center; width: 100%;font-family:'Poppins', sans-serif;">
                        <thead style="background: #224229; color: #fcf9f3">
                                <tr>
                                    <th>Plant ID</th>
                                    <th>Plant Name</th>
                                    <th>Price</th>
                                    <th>Image</th>
                                    <th>Description</th>
                                    <th>Status</th>
                                    <th>Category ID</th>
                                    <th>Category Name</th>
                                    <th colspan="2">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="p" items="${requestScope.plantList}">
                                    <tr>
                                        <td>${p.id}</td>
                                        <td>${p.name}</td>
                                        <td>${p.price}</td>
                                        <td><img src="${p.imgpath}" style="width: 20%"></td>
                                        <td>${p.description}</td>
                                        <td><c:choose>
                                                <c:when test="${p.status eq 1}">Available</c:when>
                                                <c:when test="${p.status eq 0}">Unavailable</c:when>
                                            </c:choose></td>
                                        <td>${p.cateid}</td>
                                        <td>${p.catename}</td>
                                        <td>
                                            <c:url var="stocklink" value="mainController">
                                                <c:param name="pid" value="${p.id}"></c:param>
                                                <c:param name="status" value="${p.status}"></c:param>
                                                <c:param value="updatePlantStatus" name="action" ></c:param>
                                            </c:url>
                                            <c:choose>
                                                <c:when test="${p.status eq 1}"><a href="${stocklink}" style="color:black;text-decoration: none">Out of stock</a></c:when>
                                                <c:otherwise><a href="${stocklink}" style="color:black;text-decoration: none">In stock</a></c:otherwise>
                                            </c:choose>
                                        </td>
                                        <td><a href="mainController?action=updatePlantPage&pid=${p.id}" style="color:black;text-decoration: none">Update Plant</a></td>
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
