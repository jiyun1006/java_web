<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"
	import="java.util.*, sec02.ex02.*"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
	request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html>
<head>
<c:choose>
	<c:when test='${msg=="addMember"}'>
		<script>
			window.onload = function() {
				alert("회원을 등록했습니다.");
			}
		</script>
	</c:when>
	<c:when test='${msg=="modified"}'>
		<script>
			window.onload = function() {
				alert("회원정보를 수정헀습니다.");
			}
		</script>
	</c:when>
	<c:when test='${msg=="deleted"}'>
		<script>
			window.onload = function() {
				alert("회원정보를 삭제헀습니다.");
			}
		</script>
	</c:when>
</c:choose>


<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p class="cls1">회원정보</p>
	<table>
		<tr>
			<td>아이디</td>
			<td>비밀번호</td>
			<td>이름</td>
			<td>이메일</td>
			<td>가입일</td>
			<td>수정</td>
			<td>삭제</td>
		</tr>

		<c:choose>
			<c:when test="${membersList eq null}">
				<tr>
					<td>등록된회원이 없습ㄴ디ㅏ.</td>
				</tr>
			</c:when>
			<c:when test="${membersList != null }">
				<c:forEach var="mem" items="${membersList }">
					<tr>
						<td>${mem.id }</td>
						<td>${mem.pwd }</td>
						<td>${mem.name }</td>
						<td>${mem.email }</td>
						<td>${mem.joinDate }</td>
						<td><a href="${contextPath}/member/modMemberForm.do?id=${mem.id}">수정</a></td>
						<td><a href="${contextPath}/member/delMember.do?id=${mem.id}">삭제</a></td>
					</tr>
				</c:forEach>

			</c:when>
		</c:choose>

	</table>


	<a href="${contextPath}/member/memberForm.do"><p class="cls2">회원
			가입하기</p></a>












</body>
</html>