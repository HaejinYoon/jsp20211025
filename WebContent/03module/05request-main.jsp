<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>05 Request Main</title>
</head>
<body>

<div>
main Contents
</div>
<br>
name : <%= request.getParameter("name") %>
<br>

<jsp:include page="/03module/05request-sub.jsp"></jsp:include>
<%

%>
</body>
</html>