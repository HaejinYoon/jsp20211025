<%@ page  language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>26 input password</title>
</head>
<body>
<h1>Log in 교재 80p</h1>

<!-- form>{id}+input+br{PW}+input+br+input:s -->
<form action="" method="post">
ID	<input type="text" name="userid">
	<br>
PW	<input type="password" name="password">
	<br>
	<input type="submit" value="Log-in">
	
<hr>
userId : <%= request.getParameter("userid") %> <br>
passWord : <%= request.getParameter("password") %> <br>
</form>
</body>
</html>