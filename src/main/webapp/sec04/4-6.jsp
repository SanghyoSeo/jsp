<%--
  Created by IntelliJ IDEA.
  User: psh45
  Date: 2023-02-24
  Time: 오전 5:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>4-6</title>
</head>
<body>

<form action="4-7.jsp" method="post">
    <table>
        <tr>
            <td>관심언어</td>
            <td>
                <input type="checkbox" name="lang" value="PHP">PHP
                <input type="checkbox" name="lang" value="JSP">JSP
                <input type="checkbox" name="lang" value="ASP.NET">ASP.NET
            </td>
        </tr>

        <tr>
            <td>취미</td>
            <td>
                <select name="hobby" size="4" multiple>
                    <option value="영화">영화</option>
                    <option value="운동">운동</option>
                    <option value="독서">독서</option>
                    <option value="기타">기타</option>
                </select>
            </td>
        </tr>
    </table>
    <input type="submit" value="전송">
</form>

</body>
</html>
