<%--
  Created by IntelliJ IDEA.
  User: psh45
  Date: 2023-02-23
  Time: 오전 6:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.time.*" %>
<html>
<head>
    <title>테스트 페이지</title>
</head>
<body>
<%
  out.println("오늘 날짜 : " + LocalDate.now() + "<br>");
  out.println("현재 시간 : " + LocalTime.now());
%>
</body>
</html>
