<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>54 JS</title>
</head>
<body>
<h1>javascript</h1>

<script>
console.log("hello js");

let name = "TRUMP";
let age = 22;

let desc = `i'm \${name} and i'm \${age}`;

console.log(desc);
</script>

<%

%>
</body>
</html>