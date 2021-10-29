<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>04 include Ex</title>
</head>
<body>

<!-- sub.jsp location -->
<!-- use include action tag  -->
<h1>
Menu
</h1>
<hr>
<jsp:include page="/03module/04include-ex-sub.jsp"></jsp:include>

<hr>

<div>
	<h1>Main Page Contents</h1>
</div>
<%

%>
</body>
</html>