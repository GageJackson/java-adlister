<%--
  Created by IntelliJ IDEA.
  User: gagejackson
  Date: 5/2/23
  Time: 12:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="mvc" />
    </jsp:include>
</head>
<body>
<jsp:include page="partials/navbar.jsp" />

<div class="container">
    <h1>Your Order</h1>
    <p>Pizza Size: ${pizza_size}</p>
    <p>Pizza Crust: ${pizza_crust}</p>
    <p>Pizza Sauce: ${pizza_sauce}</p>
    <p>Pizza Meats: ${pizza_meats}</p>
    <p>Pizza Veggies: ${pizza_veggies}</p>
    <p>Your Address: ${address}</p>
</div>

</body>
</html>
