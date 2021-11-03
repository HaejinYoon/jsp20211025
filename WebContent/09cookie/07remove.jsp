<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>07 Remove</title>
</head>
<body>

<h1>Delete Cookie</h1>

<%
Cookie cookie = new Cookie("remove-cookie", "remove-value");
cookie.setMaxAge(0); // maxage가 0이면 쿠키 삭제
response.addCookie(cookie);
%>
</body>
</html>