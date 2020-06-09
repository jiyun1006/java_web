<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import= "java.util.*, sec01.ex01.*"   
    %>
<%
request.setCharacterEncoding("UTF-8");
%>    
<%
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
String name = request.getParameter("name");
String email = request.getParameter("email");
MemberBean m  = new MemberBean(id, pwd, name, email);
MemberDAO  memberDAO = new MemberDAO();
memberDAO.addMember(m);
List membersList = memberDAO.listMembers();


%>



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
<%
if(membersList.size()==0){
%>
<h2>등록된 회원이 없다.</h2>

<%

}else{
for(int i = 0; i<membersList.size(); i++){
	MemberBean bean = (MemberBean)membersList.get(i);
%>

<tr>
<td>
<%=bean.getId() %>
</td>
<td>
<%=bean.getPwd() %>
</td>
<td>
<%=bean.getName() %>
</td>
<td>
<%=bean.getEmail() %>
</td>
</tr>
<%
}}

%>






</table>







</body>
</html>