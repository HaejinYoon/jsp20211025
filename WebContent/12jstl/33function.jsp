<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">

<title>33 FUNCTION</title>
</head>
<body>
<p>책 p332</p>

<%
List<String> list = new ArrayList<>();
list.add("java");
list.add("jsp");

Map<String, String> map = new HashMap<>();
map.put("a", "b");

pageContext.setAttribute("map", map);
pageContext.setAttribute("list", list);
pageContext.setAttribute("str", "hello world");
%>

${fn:length(list) } <br>
${fn:length(str) } <br>
${fn:length(map) } <br>

<hr>

${list.size() } <br>
${str.length() } <br>
${map.size() } <br>

${map.get("a") }

<hr>

<%
pageContext.setAttribute("str1", "hello world");
pageContext.setAttribute("str2", "hello <br> world");
%>

${str1 } <br>
${str2 } <br>
${fn:escapeXml(str2) } <br>












</body>
</html>

