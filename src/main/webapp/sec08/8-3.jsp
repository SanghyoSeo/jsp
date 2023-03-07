<%--
  Created by IntelliJ IDEA.
  User: psh45
  Date: 2023-03-06
  Time: 오후 9:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    Cookie cookie = new Cookie("userId", null);
    cookie.setMaxAge(0);
    response.addCookie(cookie);

    response.sendRedirect("8-1.jsp");
%>

<html>
<head>
    <title>8-3</title>
</head>
<body>

</body>
</html>
