<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>08 MaxInactiveInterval</title>
</head>
<body>

<h1>MaxInactiveInterval</h1>
<%
session.setMaxInactiveInterval(10);
%>
</body>
</html>