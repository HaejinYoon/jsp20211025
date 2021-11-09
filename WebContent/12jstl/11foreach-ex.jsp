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

<title>11 FOREACH EX</title>
</head>
<body>
<h1> forEach - 구구단 2단</h1>

<c:forEach begin="1" end="9" var="i">
	<p>
	2 X ${i } = ${i*2 } <br>
	</p>
</c:forEach>

<%

%>
</body>
</html>