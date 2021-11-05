<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>28 LIST FOR</title>
</head>
<body>


<%
String[] arr = {"apple", "berry", "melon"};
pageContext.setAttribute("list", arr);
%>

<p>${list[0] }</p>
<p>${list[1] }</p>
<p>${list[2] }</p>

<hr>

<%
for (int i=0;i<arr.length;i++){
	pageContext.setAttribute("i", i);
%>
	<p><%= i %> : ${list[i] }</p>
<%
}
%>
</body>
</html>