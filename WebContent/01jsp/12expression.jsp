<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>12expression</title>
</head>
<body>
<%
Map<String, String> map = new HashMap<>();
map.put("java", "lang");
map.put("css", "style");
map.put("spring", "framwork");
map.put("javascript", "script");
%>

<%
Set<String> keys = map.keySet();
for(String key:keys){
%>
<h1><%=map.entrySet()%>: <%= map.get(key) %></h1>
<%
}
%>	

<%
for(Map.Entry<String, String> entry : map.entrySet()){
%>
<li><%= entry.getKey() %>: <%=entry.getValue() %> </li>
<%
}
%>
</body>
</html>