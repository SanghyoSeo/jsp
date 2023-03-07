<%--
  Created by IntelliJ IDEA.
  User: psh45
  Date: 2023-03-03
  Time: 오후 4:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>exam3</title>
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

    String[][] addr = {
            { "김자바", "충북 음성군", "010-1234-5678" },
            { "이문서", "서울 특별시", "010-4321-8765" },
            { "박쿼리", "충북 청주시", "010-3231-8769" }
    };

    for (int i = 0; i < addr.length; i++) {
        String sql = String.format(
                "insert into addr value('%s', '%s', '%s')",
                addr[i][0], addr[i][1], addr[i][2]
        );

        stmt.executeUpdate(sql);
        out.println("쿼리 실행 성공: " + sql + "<br>");
    }
  } catch (Exception e) {
      e.printStackTrace();
  }
%>

</body>
</html>
