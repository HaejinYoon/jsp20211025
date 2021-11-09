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

<title>23 VARSTATUS</title>
</head>
<body>
<%
pageContext.setAttribute("data", new String[] {"water", "jeju", "seoul", "paris", "milk"});
%>
<ul>
<c:forEach items="${data }" var="item" varStatus="s" begin="2" end="3">
	<li>${s.count } : ${item }</li>
</c:forEach>
</ul>

<%--
<ul>
	<li>1 : seoul</li>
	<li>2 : paris</li>
</ul>
 --%>
</body>
</html>