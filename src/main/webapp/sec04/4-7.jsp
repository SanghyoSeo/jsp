<%--
  Created by IntelliJ IDEA.
  User: psh45
  Date: 2023-02-24
  Time: 오전 5:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>4-7</title>
</head>
<body>

<%
  request.setCharacterEncoding("utf-8");

  String[] lang = request.getParameterValues("lang");
  String[] hobby = request.getParameterValues("hobby");
%>

  관심언어 :
  <%
    for(int i = 0; i < lang.length; i++) {
      out.println(lang[i] + " ");
    }
  %>
  <br>

  취미 :
  <%
    for(int i = 0; i < hobby.length; i++) {
      out.println(hobby[i] + " ");
    }
  %>
  <br>

</body>
</html>
