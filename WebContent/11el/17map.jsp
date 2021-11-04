<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>17 map</title>
</head>
<body>
<h1>map</h1>

<%
Map<String, String> map = new HashMap<>();
map.put("lang", "java");
map.put("pre", "html");
map.put("pattern", "mvc");
//2개의 ket, value쌍(entry) 넣고
map.put("aespa1", "winter");
map.put("aespa2", "karina");

pageContext.setAttribute("bean1", map);
%>
<hr>

<p>map : ${bean1 }</p>
<p>lang : ${bean1.lang }</p>
<p>pre : ${bean1.pre }</p>
<p>pattern : ${bean1.pattern }</p>
<p>aespa1 : ${bean1.aespa1 }</p>
<p>aespa2 : ${bean1.aespa2 }</p>
</body>
</html>