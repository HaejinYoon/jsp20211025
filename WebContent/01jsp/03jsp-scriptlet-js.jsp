<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>03</title>
</head>
<body>
<%
	for(int i=0;i<5;i++){
		out.write("<p>스크립트릿으로 작성한 html</p>\r\n");
	}
%>
<script type="text/javascript">
	for (let i=0;i<5;i++){
		document.write("<p>js로 작성한 html</p>\r\n")
	}
</script>
</body>
</html>