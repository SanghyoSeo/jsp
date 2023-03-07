<%--
  Created by IntelliJ IDEA.
  User: psh45
  Date: 2023-02-23
  Time: 오전 7:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
  request.setCharacterEncoding("utf-8");
%>

  아이디: <%=request.getParameter("id")%><br>
  비밀번호: <%=request.getParameter("pw")%><br>
  성별: <%=request.getParameter("gender")%><br>
  가입경로: <%=request.getParameter("intro")%><br>
  주소: <%=request.getParameter("addr")%><br>
  메모: <%=request.getParameter("memo")%><br>

</body>
</html>
