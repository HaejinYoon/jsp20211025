<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>01 Main</title>
</head>
<body>
<h1>main content</h1>
<!-- attribute(속성)으로 객체를 전달  할 수 있다. -->
<%
request.setAttribute("attr1","avengers");
%>
<jsp:include page="01sub.jsp">
	<jsp:param value="butter" name="param1"/>
</jsp:include>

<%

%>
</body>
</html>