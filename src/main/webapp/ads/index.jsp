<%--
  Created by IntelliJ IDEA.
  User: gagejackson
  Date: 5/4/23
  Time: 9:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ads</title>
</head>
<body>
<h1>Displaying all ads</h1>
<c:forEach var="ad" items="${ads}">
    <div class="ad">
        <h4>${ad.title}</h4>
        <p>${ad.description}</p>
    </div>
</c:forEach>
</body>
</html>
