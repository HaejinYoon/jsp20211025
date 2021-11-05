<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>36 SCOPE</title>
</head>
<body>


<%
pageContext.setAttribute("attr1", "pageVal1");
//request.setAttribute("attr1", arg1);
pageContext.setAttribute("page-attr1", "page-val1");
%>

<p>${attr1 }</p>
<p>${pageScope.attr1 }</p>
<p>${pageScope["attr1"] }</p>
<p>${pageScope["page-attr1"] }</p>
</body>
</html>