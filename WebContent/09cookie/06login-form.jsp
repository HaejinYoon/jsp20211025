<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>06 login form</title>
</head>
<body>

<!-- form>(input+br)*2+input:s -->
<form action="06process.jsp" method="post">
	<input type="text" name="userid" placeholder="아이디">
	<br>
	<input type="password" name="pw" placeholder="암호">
	<br>
	<input type="submit" value="Login">
</form>

<%

%>
</body>
</html>