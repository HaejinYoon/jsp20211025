<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>30 LIST FOR TO</title>
</head>
<body>
<%
List<String> list = (List<String>)session.getAttribute("data");

for(int i=0;i<list.size();i++){
	pageContext.setAttribute("i", i);
%>
	<p><%= i %>: ${data[i] }</p>
<%
}
%>
</body>
</html>	