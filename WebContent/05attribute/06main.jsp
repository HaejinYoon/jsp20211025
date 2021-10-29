<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="sample01.MyBook"%>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>06 Main</title>
</head>
<body>

<h1>My Book Title and Price</h1>

<%
MyBook javabook = new MyBook("java", 10000);
request.setAttribute("book", javabook);

%>

<jsp:include page="06sub.jsp"></jsp:include>


</body>
</html>