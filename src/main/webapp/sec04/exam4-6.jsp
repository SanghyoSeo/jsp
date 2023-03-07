<%--
  Created by IntelliJ IDEA.
  User: psh45
  Date: 2023-02-24
  Time: 오전 10:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>exam3</title>
</head>
<body>

<%
    request.setCharacterEncoding("utf-8");
%>

아이디: <%=request.getParameter("id")%><br>
비밀번호: <%=request.getParameter("pw")%><br>
성별: <%=request.getParameter("gender")%><br>
가입경로: <%=request.getParameter("intro")%><br>
학과: <%=request.getParameter("dept")%><br>
메모: <%=request.getParameter("memo")%>

</body>
</html>
