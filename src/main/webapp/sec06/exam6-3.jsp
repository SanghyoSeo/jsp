<%--
  Created by IntelliJ IDEA.
  User: psh45
  Date: 2023-03-03
  Time: 오후 4:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <style>
        table { width: 400px; text-align: center; }
        th { background-color: moccasin; }
        tr { background-color: beige; }
    </style>
    <title>6-3</title>
</head>
<body>

<table>
    <tr>
        <th>이름</th><th>주소</th><th>전화번호</th>
    </tr>

    <%
        Class.forName("org.mariadb.jdbc.Driver");
        try (
                Connection conn = DriverManager.getConnection(
                        "jdbc:mariadb://localhost:3307/jspdb",
                        "jsp",
                        "910741"
                );
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery("select * from addr");
        ) {
            while (rs.next()) {
    %>
            <tr>
                <td><%=rs.getString("name")%></td>
                <td><%=rs.getString("address")%></td>
                <td><%=rs.getString("phone_number")%></td>
            </tr>
    <%
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
</table>

</body>
</html>
