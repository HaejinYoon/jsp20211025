<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>56 STRING</title>
</head>
<body>
<h1>string</h1>

<p>${param.name== "donald" }</p>
<p>${param.name== 'donald' }</p>


		
<%

%>
</body>
</html>