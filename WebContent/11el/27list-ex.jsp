<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>27 LIST EX</title>
</head>
<body>


<%
List<String> list = new ArrayList<>();
list.add("Winter");
list.add("Karina");
list.add("Giesel");

String [] arr = {"Grape", "Orange", "Apple"};

pageContext.setAttribute("list1", list);
pageContext.setAttribute("arr1", arr);
%>

<p>${arr1[0] }</p>
<p>${arr1[1] }</p>
<p>${list1[0] }</p>
<p>${list1["1"] }</p>
<p>${list1["2"] }</p>

</body>
</html>