<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>첫 페이지</title>
<style type="text/css">
   /* 화면 중앙 정렬을 위한 스타일 */
    .form-container {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh; /* 화면 전체 높이 맞추기 */
        gap: 20px; /* 버튼 사이 간격 */ 
    }

    /* 버튼 크기 설정 */
    input[type="submit"] {
        padding: 20px 40px; /* 버튼 크기를 키우기 위한 패딩 */
        font-size: 18px; /* 폰트 크기를 크게 */
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        box-sizing: border-box;
    }

    /* 버튼 호버 효과 */
    input[type="submit"]:hover {
        background-color: #fff;
        color: #45a049;
        border: 1px solid #45a049;
        box-sizing: border-box;
    }
</style>
</head>
<body>
<div class="form-container">
	<form action="${pageContext.request.contextPath }/LoginController" method="post">
		<input type="submit" value="로그인">
		<input type="hidden" name="cmd" value="m_login">
	</form>
	
	<form action="${pageContext.request.contextPath }/LoginController" method="post">
		<input type="submit" value="회원가입">
		<input type="hidden" name="cmd" value="m_join">
	</form>
	<form action="${pageContext.request.contextPath }/GuestBookController" method="post">
		<input type="submit" value="GuestBook">
		<input type="hidden" name="cmd" value="g_list">
	</form>
	<form action="${pageContext.request.contextPath }/GuestBookController" method="post">
		<input type="submit" value="File_UP_DOWN">
		<input type="hidden" name="cmd" value="g_list">
	</form>
	<form action="${pageContext.request.contextPath }/GuestBook2Controller" method="post">
		<input type="submit" value="GuestBook2">
		<input type="hidden" name="cmd" value="g_list">
	</form>
</div>
	
	
</body>
</html>