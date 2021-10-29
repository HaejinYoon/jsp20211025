<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>05 main 2</title>
</head>
<body>
<%
ArrayList<String> list = new ArrayList<>();
list.add(0, "HOME");
list.add(1, "ABOUT");
list.add(2, "INFO");
list.add(3, "LOGOUT");
request.setAttribute("menuItem", list);
%>

<jsp:include page="05sub.jsp"></jsp:include>
<h1>Main2 Content</h1>
</body>
</html>