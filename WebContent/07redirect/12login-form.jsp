<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>12 Login Form</title>
</head>
<body>
<form action="12main.jsp" method="post">
	<input type="text" name="userid" placeholder="아이디"> <br>
	<input type="password" name="password" placeholder="암호"> <br>
	<input type="submit" value="Login">
</form>


</body>
</html>