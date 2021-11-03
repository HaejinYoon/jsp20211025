<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>07 Add</title>
</head>
<body>

<h1>Add Cookie</h1>
<%
Cookie cookie = new Cookie("remove-cookie", "remove-value");
response.addCookie(cookie);

%>
</body>
</html>