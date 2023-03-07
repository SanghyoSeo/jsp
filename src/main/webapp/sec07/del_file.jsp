<%--
  Created by IntelliJ IDEA.
  User: psh45
  Date: 2023-03-06
  Time: 오후 3:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.File" %>

<%
  int num = Integer.parseInt(request.getParameter("num"));

  Class.forName("org.mariadb.jdbc.Driver");
  try(
          Connection conn = DriverManager.getConnection(
                  "jdbc:mariadb://localhost:3307/jspdb",
                  "jsp",
                  "910741"
          );
          Statement stmt = conn.createStatement();

          ResultSet rs = stmt.executeQuery("select * from webhard where num=" + num);

          ) {
      if (rs.next()) {
          File file = new File(application.getRealPath("/files/") +
                  rs.getString("fname"));
          if (file != null) {
              file.delete();
          }

          stmt.executeUpdate("delete from webhard where num=" + num);
      }
  } catch (Exception e) {
      e.printStackTrace();
  }

  response.sendRedirect("webhard.jsp");
%>

<html>
<head>
    <title>del_file</title>
</head>
<body>

</body>
</html>
