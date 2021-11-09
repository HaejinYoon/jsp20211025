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

<title>13 GUGUDAN 1~9</title>
</head>
<body>
<h1>1~9 구구단</h1>
	<c:forEach begin="1" end="9" var="i">
		<c:forEach begin="1" end="9" var="dan">
			<p>
				${i } X ${dan } = ${i*dan } <br>
			</p>
		</c:forEach>
		<hr>
	</c:forEach>

<%

%>
</body>
</html>