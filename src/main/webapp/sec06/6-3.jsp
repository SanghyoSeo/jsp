<%--
  Created by IntelliJ IDEA.
  User: psh45
  Date: 2023-02-25
  Time: 오전 12:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>6-3</title>
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
            Statement stmt = conn.createStatement();
    ) {

        String sql =
                "create table score (" +
                        "num    int         primary key," +
                        "name   varchar(20)," +
                        "kor    int," +
                        "eng    int," +
                        "math   int " +
                        ")";

        stmt.executeUpdate(sql);
        out.println("성적 테이블 생성 성공!");

    } catch (Exception e) {
        e.printStackTrace();
    }
%>

</body>
</html>
