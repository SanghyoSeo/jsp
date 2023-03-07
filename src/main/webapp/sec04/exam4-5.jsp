<%--
  Created by IntelliJ IDEA.
  User: psh45
  Date: 2023-02-24
  Time: 오전 6:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>exam3</title>
</head>
<body>

<form action="exam4-6.jsp" method="post">
    <table>
        <tr>
            <td>아이디</td>
            <td><input type="text" name="id"></td>
        </tr>

        <tr>
            <td>비밀번호</td>
            <td><input type="password" name="pw"></td>
        </tr>

        <tr>
            <td>성별</td>
            <td>
                <input type="radio" name="gender" value="남" checked>남
                <input type="radio" name="gender" value="여">여
            </td>
        </tr>

        <tr>
            <td>가입경로</td>
            <td>
                <select name="intro">
                    <option value="웹검색">웹검색</option>
                    <option value="지인추천">지인추천</option>
                    <option value="기타">기타</option>
                </select>
            </td>
        </tr>

        <tr>
            <td>학과</td>
            <td>
                <select name="dept" size="4" multiple>
                    <option value="컴퓨터공학">컴퓨터공학</option>
                    <option value="건축공학">건축공학</option>
                    <option value="수학교육과">수학교육과</option>
                    <option value="유아교육과">유아교육과</option>
                </select>
            </td>
        </tr>

        <tr>
            <td>메모</td>
            <td>
                <textarea name="memo" rows="4"></textarea>
            </td>
        </tr>
    </table>
    <input type="submit" value="가입">
</form>

</body>
</html>
