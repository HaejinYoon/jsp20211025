<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>19 Select Option</title>
</head>
<body>

<!-- select>opt*3 -->
<form action="">
	<select name="color" id="">
		<option value="red">Red</option>
		<option value="yellow" selected>Yellow</option>
		<option value="blue">Blue</option>	
	</select>
	<input type="submit" value="Send">
</form>
<%
String color = request.getParameter("color");
%>
<%= color %>
</body>
</html>