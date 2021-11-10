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

<title>26 OUT</title>
</head>
<body>
<h1>JSTL OUT tag</h1>
<c:out value="hello"></c:out>
<hr>
<%
pageContext.setAttribute("attr1", "javascript");

%>

<c:out value="${attr1 }"></c:out> <br>
<c:out value="${attr2 }" default="None"></c:out> <br>
<c:out value="${attr1 }" default="None"></c:out> <br>

<c:out value="${attr2 }">No values</c:out> <br>
<c:out value="${attr1 }">No values</c:out>
<hr>
<%
pageContext.setAttribute("attr3", "<script>alert('핵!!!!');</script>");
%>
<c:out value="${attr3 }"></c:out>
</body>
</html>