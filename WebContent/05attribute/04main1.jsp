<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>04 main 1</title>
</head>
<body>

<!-- 04sub.jsp 활용하여 메뉴 만들기 -->



<%
String [] list = {"home", "about", "login"};
request.setAttribute("menuItem", list);
%>

<jsp:include page="04sub.jsp"></jsp:include>
<h1>Main1 Content</h1>


</body>
</html>