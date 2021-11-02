<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>06 logout</title>
</head>
<body>
<!-- session delete -->

<%
session.invalidate();
%>
<a href="06login.jsp">login</a> <br>
<a href="06main.jsp">main page</a> <br>
</body>
</html>