<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>06 Form Elem</title>
</head>
<body>
<form> <%-- 인풋을 받을 것들은 form안에 작성 --%>
	<input name="key"><br>
	<input type="submit">
</form>
<%
Map<String, String> map = new HashMap<>();
map.put("java","language");
map.put("spring", "framework");
map.put("react", "library");
%>

<%
String param = request.getParameter("key");
%>

<p>값 : <%= map.get(param) %></p> <%-- language / framwork / library / null --%>

<p><%= request.getParameter("key") %></p>
</body>
</html>