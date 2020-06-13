<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="${contextPath}/member/addMember.do">
		<h1>회원 가입창</h1>
		<table>
			<tr>
				<td>
					<p>아이디</p>
				</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>
					<p>비밀번호</p>
				</td>
				<td><input type="password" name="pwd"></td>
			</tr>
			<tr>
				<td>
					<p>이름</p>
				</td>
				<td>
					<p>
						<input type="text" name="name">
					</p>
				</td>
			<tr>
				<td>
					<p>이메일</p>
				</td>
				<td>
					<p>
						<input type="text" name="email">
					</p>
				</td>
			</tr>
			<tr>
				<td>
					<p>&nbsp;</p>
				</td>
				<td><input type="submit" value="가입하기"> 
				<input
					type="reset" value="다시입력"></td>
			</tr>
		</table>
	</form>
</body>
</html>