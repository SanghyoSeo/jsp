<%--
  Created by IntelliJ IDEA.
  User: psh45
  Date: 2023-03-05
  Time: 오후 9:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>7-3</title>
    <style>
        table { width: 700px; text-align: center; }
        th { background-color: cyan; }

        .left { text-align: left; }
        .right { text-align: right; }

        a:link {text-decoration: none; color: blue; }
        a:hover {text-decoration: none; color: red; }
    </style>
</head>
<body>

<form action="add_file.jsp" enctype="multipart/form-data" method="post">
    업로드할 파일을 선택하세요. <br>
    <input type="file" name="upload"><br>
    <input type="submit" value="업로드">
</form>
<br>

<table>
    <tr>
        <th>파일명</th>
        <th>업로드 시간</th>
        <th>크기</th>
        <th>삭제</th>
    </tr>
<%
    Class.forName("org.mariadb.jdbc.Driver");
    try (
        Connection conn = DriverManager.getConnection(
        "jdbc:mariadb://localhost:3306/jspdb",
        "jsp",
        "910741"
        );
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("select * from webhard");
    ) {
        while (rs.next()) {
%>
        <tr>
            <td class="left">
                <a href="files/<%=rs.getString("fname")%>">
                    <%=rs.getString("fname")%>
                </a>
            </td>
            <td><%=rs.getString("ftime")%></td>
            <td class="right"><%=rs.getInt("fsize")%>&nbsp;&nbsp;</td>
            <td><a href="del_file.jsp?num=<%=rs.getInt("num")%>">X</a></td>
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
