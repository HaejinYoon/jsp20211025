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

<title>03 IF JSTL core if</title>
</head>
<body>
<h1>JSTL core if practice</h1>
<c:if test="${param.food eq 'apple' }">
	<p>Apple</p>
</c:if>
<%

%>
</body>
</html>