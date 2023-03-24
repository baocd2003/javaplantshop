<%-- 
    Document   : manageCategories
    Created on : Mar 17, 2023, 11:05:24 PM
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
                <h3 style="color: greenyellow">${requestScope.noti}</h3>
                <h3 style="color: red">${requestScope.warning}</h3>
                <form action="mainController" method="post">
                    <input type="text" name="txtsearch" placeholder="Input Category Name" value="${param.txtsearch}">
                    <input type="submit" value="searchCategory" name="action" class="log">
                </form><br/>
                <form action="mainController" method="post">
                    <input type="text" name="catename" required="" placeholder="Input new cate name"/>
                    <input type="submit" value="addNewCate" name="action" class="log"/>
                </form><br/>
                <c:choose>
                    <c:when test="${requestScope.categoryList.isEmpty()}">
                        <h3>No result</h3>
                    </c:when>
                    <c:otherwise>
                        <div class="cate-wrap" style="padding:0 30px">
                        <table border="1" style="text-align: center; width: 100%;font-family:'Poppins', sans-serif;">
                        <thead style="background: #224229; color: #fcf9f3">
                                <tr>
                                    <th>Category ID</th>
                                    <th>Category Name</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="cate" items="${requestScope.categoryList}">
                                    <tr>
                                        <td>${cate.cateID}</td>
                                        <td>${cate.cateName}</td>
                                        <td><a href="mainController?action=changeCatePage&cid=${cate.cateID}" style="color:black;text-decoration: none">Edit name</a></td>
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
