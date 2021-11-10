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

<title>25 BOOK FORM</title>
</head>
<body>
<h1> Book registration</h1>
<form action="25process.jsp" method="post">
	<input type="text" name="title" placeholder="Book Title">
	<br>
	<input type="text" name="writer" placeholder="Writer">
	<br>
	<input type="text" name="price" placeholder="Price" value="0">\
	<br>
	<input type="text" name="publisher" placeholder="Publisher">
	<br>
	<input type="number" name="stock" value="1">권
	<br>
	<input type="submit" value="Registration">
</form>

<br>

<a href="25list-book.jsp">Show Book List</a>
<%

%>
</body>
</html>