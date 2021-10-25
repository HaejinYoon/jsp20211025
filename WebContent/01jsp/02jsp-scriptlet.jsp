<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Scriptlet</title>
</head>
<body>
	<h1>스크립트릿</h1>
	<p>자바코드 작성 가능</p>
	
	<%
	// 자바코드 작성 가능
	System.out.println("hello jsp");
	for(int i=0;i<5;i++){
	out.write("<p>스크립트릿으로 작성한 html code "+i+"</p>\r\n");
	}
	
	%>
	
</body>
</html>