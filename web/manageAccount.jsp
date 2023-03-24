<%-- 
    Document   : manageAccount
    Created on : Mar 16, 2023, 9:11:04 PM
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
            form input{
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
            <form action="mainController" method="post">
                <input type="text" name="txtsearch" placeholder="Input Email or Full Name" value="${param.txtsearch}">
                <input type="submit" value="searchAccount" name="action" class="log">
            </form><br/>
            <c:choose>
                <c:when test="${requestScope.accountList.isEmpty()}">
                    <h3>No result</h3>
                </c:when>
                <c:otherwise>
                    <div class="acc-wrap" style="padding:0 30px;">
                    <table border="1" style="text-align: center; width: 100%;font-family:'Poppins', sans-serif;">
                        <thead style="background: #224229; color: #fcf9f3">
                            <tr>
                                <th>ID</th>
                                <th>Email</th>
                                <th>Full name</th>
                                <th>Status</th>
                                <th>Phone</th>
                                <th>Role</th>
                                <th>Action</th> 
                            </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="acc" items="${requestScope.accountList}">
                            <tr>
                                <td>${acc.accID}</td>
                                <td>${acc.email}</td>
                                <td>${acc.fullname}</td>
                                <td><c:choose>
                                <c:when test="${acc.status eq 1}">Active</c:when>
                                <c:otherwise>Inactive</c:otherwise>
                            </c:choose></td>
                            <td>${acc.phone}</td>
                            <td>
                            <c:choose>
                                <c:when test="${acc.role eq 1}">Admin</c:when>
                                <c:otherwise>User</c:otherwise>
                            </c:choose>
                            </td>
                            <td>
                            <c:if test="${acc.role eq 0}">
                                <c:url var="banlink" value="mainController">
                                    <c:param name="email" value="${acc.email}"></c:param>
                                    <c:param name="status" value="${acc.status}"></c:param>
                                    <c:param value="changeStatusAccount" name="action" ></c:param>
                                </c:url>
                                <c:choose>
                                    <c:when test="${acc.status eq 1}"><a href="${banlink}" style="color:black;text-decoration: none">Block</a></c:when>
                                    <c:otherwise><a href="${banlink}" style="color:black;text-decoration: none">Unblock</a></c:otherwise>
                                </c:choose>
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
