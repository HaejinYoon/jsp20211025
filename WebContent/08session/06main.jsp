<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>06 main page</title>
</head>
<body>


<%
String name = (String) session.getAttribute("username");

if(name != null){
%>
	<h1><%= name %>님 반갑습니다.</h1>
	<a href="06logout.jsp">logout</a>
<%
} else {
%>
	<h1>손님입니다.</h1>
<%
}
%>
</body>
</html>