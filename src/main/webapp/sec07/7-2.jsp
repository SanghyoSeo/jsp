<%--
  Created by IntelliJ IDEA.
  User: psh45
  Date: 2023-03-03
  Time: 오후 5:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.oreilly.servlet.MultipartRequest,
                com.oreilly.servlet.multipart.DefaultFileRenamePolicy,
                java.io.File" %>
<html>
<head>
    <title>7-2</title>
</head>
<body>

<%
    MultipartRequest multi = new MultipartRequest(
            request,
            application.getRealPath("/files"),  // 파일을 저장할 경로
            100 * 1024 * 1024,                  // 최대 파일 크기 (100MB)
            "utf-8",                            // 인코딩
            new DefaultFileRenamePolicy()       // 동일 파일명 처리 방법
    );

    File file = multi.getFile("upload");

    if (file == null)
        out.println("파일 업로드 오류!");
    else {
        out.println("File Name : " + file.getName() + "<br>");
        out.println("File Size : " + file.length() + "<br>");
    }
%>

</body>
</html>
