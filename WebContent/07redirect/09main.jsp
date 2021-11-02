<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>

<!-- 아이디가 imauser이면 main.jsp 컨텐츠를 보여주고
	 그렇지 않으면 login-form.jsp로 리디렉션 -->
	 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>09main</title>
</head>
<body>

<h1>Main contents</h1>

<%
String id = request.getParameter("userid");
String pw = request.getParameter("password");
if(!id.equals("iamuser")){
	

	response.sendRedirect("09login-form.jsp");
}
%>

</body>
</html>