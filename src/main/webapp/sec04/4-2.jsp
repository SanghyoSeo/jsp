<%--
  Created by IntelliJ IDEA.
  User: psh45
  Date: 2023-02-23
  Time: 오전 7:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

국어: <%=request.getParameter("kor")%><br>
영어: <%=request.getParameter("eng")%><br>
수학: <%=request.getParameter("math")%><br>

</body>
</html>
