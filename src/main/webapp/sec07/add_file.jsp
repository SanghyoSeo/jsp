<%--
  Created by IntelliJ IDEA.
  User: psh45
  Date: 2023-03-06
  Time: 오후 3:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.oreilly.servlet.MultipartRequest,
                com.oreilly.servlet.multipart.DefaultFileRenamePolicy,
                java.io.File" %>
<%@ page import="java.time.*" %>

<%
    MultipartRequest multi = new MultipartRequest(
            request,
            application.getRealPath("/files"),
            100 * 1024 * 1024,
            "utf-8",
            new DefaultFileRenamePolicy()
    );

    File file = multi.getFile("upload");

    if (file != null) {
        Class.forName("org.mariadb.jdbc.Driver");
        try (
                Connection conn = DriverManager.getConnection(
                        "jdbc:mariadb://localhost:3307/jspdb",
                        "jsp",
                        "910741"
                );
                Statement stmt = conn.createStatement();

                ) {
            String curTime = LocalDate.now() + " " +
                    LocalTime.now().toString().substring(0, 8);

            stmt.executeUpdate(String.format(
                    "insert into webhard (fname, ftime, fsize) " +
                            "values ('%s', '%s', %d)",
                    file.getName(), curTime, (int)file.length()
            ));

            response.sendRedirect("webhard.jsp");
            return;

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
%>

<html>
<head>
    <title>add_file</title>
</head>
<body>

<script>
    alert('업로드 실패 !');
    history.back();
</script>

</body>
</html>
