<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>08 Add</title>
</head>
<body>

<h1>Cookie Add</h1>

<%
Cookie cookie = new Cookie("removal-cookie", "removal-value1");
response.addCookie(cookie);
%>
</body>
</html>