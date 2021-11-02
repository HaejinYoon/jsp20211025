<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>04 Attr2</title>
</head>
<body>

<a href="04attr1.jsp">선택하기</a>
<div>
<h1>선택한 음식들</h1>
</div>

<ul>
<%

Set<String> set = (Set<String>)session.getAttribute("foods");
if(set==null){
	set = new HashSet<>();
	session.setAttribute("foods", set);
}
String food = request.getParameter("food");
if(food!=null){
set.add(food);
}
for(String item : set){
%>
	<li><%= item %></li>	
<%
}
%>	
</ul>


</body>
</html>