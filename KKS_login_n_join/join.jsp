<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<!--
    join.html ~ join.jsp
    : 회원가입 페이지 
-->
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>회원가입</title>
</head>
<body>
    <h1>회원가입</h1>
    <form method="post" action="join_check.jsp">
        <label for="m_id">아이디</label>
        <input type="text" id="m_id" name="m_id" required>
        <br>
        <label for="m_pw">비밀번호</label>
        <input type="password" id="m_pw" name="m_pw" required>
        <br>
        <label for="m_name">이름</label>
        <input type="text" id="m_name" name="m_name" required>
        <br>
        <label for="m_age">나이</label>
        <input type="text" id="m_age" name="m_age" required>
        <br>
        <input type="submit" value="Join">
    </form>
</body>
</html>