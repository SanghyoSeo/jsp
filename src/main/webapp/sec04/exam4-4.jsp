<%--
  Created by IntelliJ IDEA.
  User: psh45
  Date: 2023-02-24
  Time: 오전 6:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>exam2</title>
</head>
<body>

원의 둘레:
<%
    double radius = Integer.parseInt(request.getParameter("radius"));
    double length = radius * 2 * 3.14;

    out.println(length);
%>
<br>

원의 면적:
<%
    double area = radius * radius * 3.14;

    out.println(area);
%>

</body>
</html>
