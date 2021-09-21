<%--
  Created by IntelliJ IDEA.
  User: Alexander Nikolaev
  Date: 9/21/2021
  Time: 8:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show cart</title>
</head>
<body>
  <%@ page import="ru.nikolaev.javaEE.logic.Cart" %>
  <% Cart cart = (Cart) session.getAttribute("cart"); %>

  <p> Product: <%= cart.getName() %> </p>
  <p> Quantity: <%= cart.getQuantity() %> </p>
</body>
</html>
