<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">

<title>10 Page B Song</title>
</head>
<body>

<h1>page b (song)</h1>

<%
List<String> songList = (List<String>) request.getAttribute("song");

%>
<ul>
<%
for (String food : songList){
%>
	<li>
	음악 제목 :	<%= food %>
	
	</li>
<%
}
%>
</ul>
<%-- songList의 아이템들을 출력 --%>

</body>
</html>







