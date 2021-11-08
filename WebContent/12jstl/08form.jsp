<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">

<title>08 FORM</title>
</head>
<body>

<form action="08view.jsp">
	<input type="text" name="name" placeholder="Name">
	<br>
	<input type="text" name="age" placeholder="Age">
	<br>
	<input type="submit" value="Send">
</form>

<%

%>
</body>
</html>