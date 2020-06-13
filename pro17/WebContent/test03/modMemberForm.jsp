<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원 정보 수정창</h1>
	<form method="post"
		action="${contextPath}/member/modMember.do?id=${memInfo.id}">
		<table>
			<tr>
				<td>
					<p>아이디</p>
				</td>
				<td><input type="text" name="id" value="${memInfo.id}" disabled></td>
			</tr>
			<tr>
				<td>
					<p>비밀번호</p>
				</td>
				<td><input type="password" name="pwd" value="${memInfo.pwd}"></td>
			</tr>
			<tr>
				<td>
					<p>이름</p>
				</td>
				<td><input type="text" name="email" value="${memInfo.email}"></td>
			</tr>
			<tr>
				<td>
					<p>가입일</p>
				</td>
				<td><input type="text" name="joinDate"
					value="${memInfo.joinDate}" disabled></td>
			</tr>
			<tr>
				<td><input type="submit" value="수정하기"> <input
					type="reset" value="다시입력"></td>
			</tr>


		</table>


	</form>



</body>
</html>