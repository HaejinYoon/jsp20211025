<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>05 Main 1</title>
</head>
<body>
<%
ArrayList<String> list = new ArrayList<>();
list.add(0, "HOME");
list.add(1, "ABOUT");
list.add(2, "LOGIN");
// List<String> list = Arrays.asList("home","about","login");
request.setAttribute("menuItem", list);
%>

<jsp:include page="05sub.jsp"></jsp:include>
<h1>Main1 Content</h1>

</body>
</html>