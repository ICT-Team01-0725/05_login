<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<!--
    login.html ~ login.jsp ~ login_check.jsp ~ login.jsp
    : 로그인 DB 확인 페이지 
-->
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>로그인 DB 확인</title>
</head>
<body>
    <%
        String userID = request.getParameter("userID");
        String password = request.getParameter("userPassword");

        String dbURL = "jdbc:mysql://localhost:3306/ictedu_db";
        String dbUser = "kkyungseo"; 
        String dbPassword = "1111";

        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet res = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

            String sql = "SELECT * FROM member WHERE m_id=? AND m_pw=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, username);
            pstmt.setString(2, password);
            res = pstmt.executeQuery();

            if (res.next()) {
                out.println("로그인을 성공했습니다!");
            } else {
                out.println("로그인에 실패했습니다. 다시 시도하십시오.");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (res != null) {
                try {
                    res.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
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