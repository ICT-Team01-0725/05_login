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
	li {width: 20px; flex;}
</style>

</head>
<body>
	<div>
		<h2>방명록 : 수정화면</h2>
		<hr>
		<form action="${pageContext.request.contextPath }/GuestBookController" method="post">
			<input type="submit" value="[목록으로 이동]">
			<input type="hidden" name="cmd" value="g_list">
		</form>
		<form action="${pageContext.request.contextPath }/GuestBookController" method="post">
			<table>
				<tr align="center">
					<td bgcolor="#99ccff">작성자</td>
					<td>${gvo.gb_name}</td>
				</tr>
				<tr align="center">
					<td bgcolor="#99ccff">제  목</td>
					<td>${gvo.gb_subject}</td>
				</tr>
				<tr align="center">
					<td bgcolor="#99ccff">email</td>
					<td>${gvo.gb_email}</td>
				</tr>
				<tr align="left">
					<td colspan="2">
						<pre style="padding-left: 15px">${gvo.gb_content}</pre>
					</td>
				</tr>
				<tfoot>
					<tr align="center">
						<td colspan="2">
							<input type="hidden" name="gb_idx" value=${gvo.gb_idx }>
							<input type="hidden" name="gb_pw" value=${gvo.gb_pw }>
							<input type="button" value="수정" onclick="update_go(this.form)">
							<input type="button" value="삭제" onclick="delete_go(this.form)" >
						
						</td>
					</tr>
				</tfoot>
			</table>
			</form>
	</div>
	<script type="text/javascript">
		function update_go(f){
			f.action="${pageContext.request.contextPath}/GuestBookController?cmd=g_go_update";
			f.submit();
		}
		function delete_go(f){
			f.action="${pageContext.request.contextPath}/GuestBookController?cmd=g_delete";
			f.submit();
		}
	</script>
</body>
</html>