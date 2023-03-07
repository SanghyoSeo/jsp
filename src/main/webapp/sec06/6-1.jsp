<%--
  Created by IntelliJ IDEA.
  User: psh45
  Date: 2023-02-24
  Time: 오후 11:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>6-1</title>
</head>
<body>

<%
    Class.forName("org.mariadb.jdbc.Driver");
    try (
            Connection conn = DriverManager.getConnection(
                    "jdbc:mariadb://localhost:3307/jspdb",
                    "jsp",
                    "910741"
            );

    ) {

        out.println("DB 접속 성공 !");

    } catch(Exception e) {
        e.printStackTrace();
    }
%>

</body>
</html>
