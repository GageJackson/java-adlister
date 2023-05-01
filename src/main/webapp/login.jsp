<%--
  Created by IntelliJ IDEA.
  User: gagejackson
  Date: 5/1/23
  Time: 1:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Login Page</title>
</head>
<body>
    <h1>Login to your profile</h1>

    <form id="loginForm" action="profile.jsp" method="post">
        <label for="userName">
            <h4>Username: </h4>
            <input id="userName" type="text" name="user">
        </label>
        <label for="userPassword">
            <h4>Password: </h4>
            <input id="userPassword" type="password" name="pass">
        </label>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
