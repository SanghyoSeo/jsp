<%--
  Created by IntelliJ IDEA.
  User: psh45
  Date: 2023-02-24
  Time: 오전 5:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>exam1</title>
</head>
<body>

<%
    int kor = Integer.parseInt(request.getParameter("kor"));
    int eng = Integer.parseInt(request.getParameter("eng"));
    int math = Integer.parseInt(request.getParameter("math"));

    int sum = kor + eng + math;
    double avg = (double) sum / 3;

    out.println("국어: " + kor + "<br>");
    out.println("영어: " + eng + "<br>");
    out.println("수학: " + math + "<br>");
    out.println("총점: " + sum + "<br>");
    out.println("평균: " + String.format("%.2f", avg) + "<br>");
%>

</body>
</html>
