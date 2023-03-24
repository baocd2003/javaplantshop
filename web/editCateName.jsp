<%-- 
    Document   : editCateName
    Created on : Mar 17, 2023, 11:47:48 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                <header>
                    <c:import url="header_loginedAdmin.jsp"/>
                </header>
                <div class="back">
                <i class="fa fa-angle-left"></i><a href="mainController?action=manageCategories">Back to Manage Category Page</a>
                </div>
                
                <form action="mainController" method="post" class="form-log" style="font-family:'Poppins', sans-serif;">
                    <h1>Edit Category's name</h1>
                    <table>
                        <tr>
                            <th>Category ID: ${param.cid}
                                <input type="hidden" name="cid" value="${param.cid}"/>
                            </th>
                            <td></td>
                        </tr>
                        <tr>
                            <th>Category new name</th>
                            <td><input type="text" name="catename" value="${param.catename}" placeholder="Input new category name"></td>
                        </tr>
                        <tr><td><input type="submit" value="editCateName" name="action" class="log" style="margin-left: 100px;
    margin-top: 36px; padding-left:20px"></td></tr>
                    </table>
                </form>
                <footer>
                    <c:import url="footer.jsp"/>
                </footer>
    </body>
</html>
