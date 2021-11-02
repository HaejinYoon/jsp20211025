<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>

<!-- 아이디가 imauser이면 main.jsp 컨텐츠를 보여주고
	 그렇지 않으면 login-form.jsp로 리디렉션 -->
<%
String id = request.getParameter("userid");
String pw = request.getParameter("password");
if(id.equals("iamuser")){
	
	
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>12 main</title>
</head>
<body>

<h1>Main contents</h1>

<%
} else {
	%>
	<script>
		alert("아이디나 패스워드가 일치하지 않습니다.")
		window.location.href="12login-form.jsp";
	</script>
	<%
	
}
%>

</body>
</html>