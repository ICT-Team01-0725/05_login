<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 방 명 록 </title>
<style type="text/css">
	a { text-decoration: none;}
	table{width: 600px; border-collapse:collapse; text-align: center;}
	table,th,td{border: 1px solid black; padding: 3px}
	div{width: 600px; margin:auto; text-align: center;}
</style>

</head>
<body>
	<div>
		<h2>방명록 : 작성화면</h2>
		<hr>
		<form action="${pageContext.request.contextPath }/GuestBookController" method="post">
			<input type="submit" value="[목록으로 이동]">
			<input type="hidden" name="cmd" value="g_list">
		</form>
		<form action="${pageContext.request.contextPath }/GuestBookController" method="post">
			<table>
				<tr align="center">
					<td bgcolor="#99ccff">작성자</td>
					<td><input type="text" name="name" size ="20"></td>
				</tr>
				<tr align="center">
					<td bgcolor="#99ccff">제  목</td>
					<td><input type="text" name="subject" size ="20"></td>
				</tr>
				<tr align="center">
					<td bgcolor="#99ccff">email</td>
					<td><input type="text" name="email" size ="20"></td>
				</tr>
				<tr align="center">
					<td bgcolor="#99ccff">비밀번호</td>
					<td><input type="password" name="pwd" size ="20"></td>
				</tr>
				<tr align="center">
					<td colspan="2">
						<textarea rows="7" cols="60" name="content"></textarea>
					</td>
				</tr>
				<tfoot>
					<tr align="center">
						<td colspan="2">
							<input type="hidden" name="cmd" value="g_write_ok">
							<input type="submit" value="저장">
							<input type="reset" value="취소">
						</td>
					</tr>
				</tfoot>
			</table>
		</form>
	</div>
</body>
</html>