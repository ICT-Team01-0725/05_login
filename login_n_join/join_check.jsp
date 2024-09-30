<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<!--
    join.html ~ join.jsp ~ join_check.jsp
    : 회원가입 DB 확인 페이지 
-->
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>회원가입 DB 확인</title>
</head>
<body>
    <%
        String m_id = request.getParameter("m_id");
        String m_pw = request.getParameter("m_pw");
        String m_name = request.getParameter("m_name");
        String m_age = request.getParameter("m_age");

        String dbURL = "jdbc:mysql://localhost:3306/ictedu_db";
        String dbUser = "kkyungseo"; 
        String dbPassword = "1111";

        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

            String sql = "INSERT INTO user (m_id, m_pw, m_name, m_age) VALUES (?, ?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, m_id);
            pstmt.setString(2, m_pw);
            pstmt.setString(3, m_name);
            pstmt.setString(4, m_age);
            pstmt.executeUpdate();
            out.println("회원가입에 성공했습니다!");
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (pstmt != null) {
                try {
                    pstmt.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    %>
</body>
</html>
