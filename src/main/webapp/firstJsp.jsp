<%--
  Created by IntelliJ IDEA.
  User: Alexander Nikolaev
  Date: 9/19/2021
  Time: 10:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>First JSP</title>
</head>
<body>
    <h1>Testing JSP</h1>
    <p>
        <%
            for (int i = 0; i < 10; i++) {
                out.println("<p>" + "Hello: " + i + "</p>");
            }
            java.util.Date date = new java.util.Date();
        %>
        <%= "Today: " + date %>
    </p>
</body>
</html>
