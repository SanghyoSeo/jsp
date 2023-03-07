<%--
  Created by IntelliJ IDEA.
  User: psh45
  Date: 2023-03-03
  Time: 오후 2:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <meta charset="UTF-8">
    <style>
        table { width: 400px; text-align: center; }
        th { background-color: cyan; }
    </style>
    <title>6-5</title>
</head>
<body>

<table>
    <tr>
        <th>번호</th><th>이름</th>
        <th>국어</th><th>영어</th><th>수학</th>
        <th>총점</th><th>평균</th>
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
            ResultSet rs = stmt.executeQuery("select * from score");
    ) {
        while (rs.next()) {
            int sum = rs.getInt("kor") + rs.getInt("eng") + rs.getInt("math");
%>
            <tr>
                <td><%=rs.getInt("num")%></td>
                <td><%=rs.getString("name")%></td>
                <td><%=rs.getInt("kor")%></td>
                <td><%=rs.getInt("eng")%></td>
                <td><%=rs.getInt("math")%></td>
                <td><%=sum%></td>
                <td><%=String.format("%.2f", (float)sum / 3)%></td>
            </tr>
<%
        }
    } catch(Exception e) {
        e.printStackTrace();
        }
%>
</table>

</body>
</html>
