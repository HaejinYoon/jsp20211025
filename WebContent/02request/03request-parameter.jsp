<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request parameter</title>
</head>
<body>
<h1>request parameter</h1>
<p><%= request.getParameter("q") %></p>

<hr>

<%
String param = request.getParameter("q");
if(param == null || !param.equals("java")){
%>
<p>not java user</p>
<%
}else {
%>
<p>java user</p>
<%
}
%>
</body>
</html>