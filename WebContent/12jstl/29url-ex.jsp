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

<title>29 URL EX</title>
</head>
<body>

<c:url value="25process.jsp" var="addNextLevelUrl" scope="page">
	<c:param name="title" value="Next Level"></c:param>
	<c:param name="writer" value="aespa"></c:param>
	<c:param name="price" value="10000"></c:param>
	<c:param name="stock" value="22"></c:param>
	<c:param name="publisher" value="SM Ent."></c:param>
</c:url>

<a href="${addNextLevelUrl }"> Add Next Level </a>

<hr>

<c:url value="25process.jsp" var="addASAPUrl" scope="page">
	<c:param name="title" value="ASAP"></c:param>
	<c:param name="writer" value="StayC"></c:param>
	<c:param name="price" value="9000"></c:param>
	<c:param name="stock" value="59"></c:param>
	<c:param name="publisher" value="HighUp Ent."></c:param>
</c:url>

<a href="${addASAPUrl }"> Add ASAP </a>

<%

%>
</body>
</html>