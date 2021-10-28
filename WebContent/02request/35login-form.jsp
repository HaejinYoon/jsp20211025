<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>35 Log-in Form</title>
</head>
<body>

<!-- form>{ID :}+input[name="uid"]+br+{PW :}+input+br+input:s[value="login"] -->
<!-- <form action="/myjsp/02request/36login-process.jsp" method="post"> -->
<form action="<%= request.getContextPath() %>/02request/36login-process.jsp" method="post">
ID : <input type="text" name="uid"><br>
PW : <input type="password" name="pwd"><br>
	 <input type="submit" value="login">
</form>

<%

%>
</body>
</html>