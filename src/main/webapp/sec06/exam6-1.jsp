<%--
  Created by IntelliJ IDEA.
  User: psh45
  Date: 2023-03-03
  Time: 오후 2:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>exam2</title>
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
          Statement stmt = conn.createStatement()
  ) {

    String sql =
            "create table addr (" +
                    "name varchar(20)       primary key," +
                    "address varchar(100)," +
                    "phone_number varchar(50)" +
                    ");";

    stmt.executeUpdate(sql);
    out.println("주소록 테이블 생성 성공!");

  } catch (Exception e) {
    e.printStackTrace();
  }
%>

</body>
</html>
