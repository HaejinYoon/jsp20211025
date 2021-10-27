<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>23 Text Area</title>
</head>
<body>
<!-- form>textarea+input:s -->
<form action="">
	<textarea name="text1" id="" cols="30" rows="10"></textarea>
	<input type="submit" value="Transmit">
</form>

<hr>

<%
String txt = request.getParameter("text1");
%>
<div><%= txt %></div>

<hr>

<textarea name="" id="" cols="30" rows="10" readonly><%= txt %></textarea>
</body>
</html>