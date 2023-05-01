<%--
  Created by IntelliJ IDEA.
  User: gagejackson
  Date: 5/1/23
  Time: 1:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
<head>
    <title>Profile Page</title>
</head>
<body>
<h1>Your profile</h1>

<% request.setAttribute("usernameInput", request.getParameter("user")); %>
<% request.setAttribute("passwordInput", request.getParameter("pass")); %>

<c:choose>
    <c:when test="${usernameInput == 'admin' && passwordInput =='password'}" >
        <h3>Hello, authorised user</h3>
    </c:when>
    <c:otherwise>
        <h3>Danger! Intruder!!</h3>
        <% response.sendRedirect("http://localhost:8080/login.jsp"); %>
    </c:otherwise>
</c:choose>

</body>
</html>
