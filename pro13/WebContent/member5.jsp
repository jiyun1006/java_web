<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,sec01.ex01.*"%>
	<%
	request.setCharacterEncoding("UTF-8");
	%>
	
	<jsp:useBean id="m" class="sec01.ex01.MemberBean" scope="page"/>
	<jsp:setProperty name="m" property="*"/>
	
	
	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table>
		<tr>
			<td>아이디</td>
			<td>비밀번호</td>
			<td>이름</td>
			<td>이메일</td>
			<td>가입일</td>
		</tr>
		
		<h2>등록된 회원이 없다.</h2>

		

		<tr>
			<td><jsp:getProperty name="m" property="id"/></td>
			<td><jsp:getProperty name="m" property="pwd"/></td>
			<td><jsp:getProperty name="m" property="name"/></td>
			<td><jsp:getProperty name="m" property="email"/></td>
		</tr>
		


	</table>



</body>
</html>