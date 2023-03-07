<%--
  Created by IntelliJ IDEA.
  User: psh45
  Date: 2023-03-06
  Time: 오후 9:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
  String id = request.getParameter("id");
  String pw = request.getParameter("pw");

  if (id.equals("admin") && pw.equals("1234")) {
    Cookie cookie = new Cookie("userId", id);
    cookie.setMaxAge(-1);
    response.addCookie(cookie);

    response.sendRedirect("8-1.jsp");
    return;
  }
%>

<html>
<head>
    <title>8-2</title>
</head>
<body>

<script>
  alert('아이디 또는 비밀번호가 틀립니다!');
  history.back()
</script>

</body>
</html>
