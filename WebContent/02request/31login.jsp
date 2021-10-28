<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>31 login alert</title>
</head>
<body>
<form action="" method="post">
	<br>ID 
	<input type="text" name="id">
	<br>PW 
	<input type="password" name="password">
	<br>
	<input type="submit" value="login">
</form>
<hr>

<%
String id = request.getParameter("id");
String pw = request.getParameter("password");
if(id !=null && pw != null){
	
	if(id.equals("myid") && pw.equals("mypassword")){
		out.print("<h1>login success!</h1>");
	}else {
		out.print("<script>");
		out.print("alert('ID or Password does not match')");
		out.print("</script>");
	}
}
%>
</body>
</html>