<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		<h2> 방 명 록 </h2>
		<hr>
		<a href="${pageContext.request.contextPath }/GuestBookController?cmd=g_write">[방명록 쓰기]</a>
		<table>
			<thead>
				<tr style="background-color: #99ccff">
					<th>번호</th>
					<th>작성자</th>
					<th>제목</th>
					<th>작성일</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${empty list}">
						<tr>
							<td colspan="4">데이터가 없습니다.</td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach items="${list}" var="k" varStatus="c">
							<tr>
								<td>${c.count}</td>
								<td>${k.gb_name}</td>
								<td><a href="${pageContext.request.contextPath }/GuestBookController?cmd=g_detail&gb_idx=${k.gb_idx}">
								 ${k.gb_subject}</a></td>
								<td>${k.gb_regdate.substring(0,10)}</td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
	</div>
</body>
</html>












