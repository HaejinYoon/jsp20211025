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

<title>14 ARRAY</title>
</head>
<body>


<%
pageContext.setAttribute("arr", new String[] {"java", "spring", "mysql", "oracle"});
%>

<c:forEach items="${arr }" var="item">
	<p>
		${item }
	</p>
</c:forEach>
</body>
</html>