<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>08 Request Param Main 1</title>
</head>
<body>
<jsp:include page="08request-param-sub.jsp">
	<jsp:param value="city1" name="menu1"/>
	<jsp:param value="city2" name="menu2"/>
	<jsp:param value="city3" name="menu3"/>
</jsp:include>

<%

%>
</body>
</html>