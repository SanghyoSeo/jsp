<%--
  Created by IntelliJ IDEA.
  User: psh45
  Date: 2023-02-25
  Time: 오전 12:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>6-4</title>
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
    String[][] score = {
            {"1", "홍길동", "50", "60", "70"},
            {"2", "이순신", "65", "75", "85"},
            {"3", "강감찬", "60", "80", "70"}
    };

    for (int i = 0; i < score.length; i++) {
      String sql = String.format(
              "insert into score value (%s, '%s', %s, %s, %s)",
              score[i][0], score[i][1], score[i][2], score[i][3], score[i][4]
      );

      stmt.executeUpdate(sql);
      out.println("쿼리 실행 성공 : " + sql + "<br>");
    }
  } catch (Exception e) {
    e.printStackTrace();
  }
%>

</body>
</html>
