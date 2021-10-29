<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>02 Main</title>
</head>
<body>
<%
request.setAttribute("num1", 3);
request.setAttribute("num2", 5);
%>

<h1>Main Content</h1>
<jsp:include page="02sub.jsp"></jsp:include>
<%

%>
</body>
</html>