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
<%--        page directives--%>
        <%@ page import="java.util.Date,
        ru.nikolaev.javaEE.logic.TestClass" %>
        <%
            for (int i = 0; i < 10; i++) {
                out.println("<p>" + "Hello: " + i + "</p>");
            }
            Date date = new Date();
            TestClass tc = new TestClass();
        %>
        <%= "Today: " + date %>
        <%= "<p>" + tc.getInfo() + "</p>" %>
    </p>
</body>
</html>
