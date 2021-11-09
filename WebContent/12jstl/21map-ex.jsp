<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">

<title>21 MAP EX</title>
</head>
<body>
<%
Map<String, String> map = new HashMap<>();
map.put("song", "asap");
map.put("food", "choco");
map.put("city", "seoul");

pageContext.setAttribute("datas", map);
%>
<ul>
<c:forEach items="${datas }" var="key">
	<li>
		${key.key }
	</li>
</c:forEach>
</ul>
<hr>
<ul>
<c:forEach items="${datas }" var="key">
	<li>
		${key.value }
	</li>
</c:forEach>
</ul>
</body>
</html>