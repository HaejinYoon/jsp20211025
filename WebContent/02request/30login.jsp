<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>30 Log In</title>
</head>
<body>
<!-- 
id, password 파라미터를 post 방식으로 전송
-->
 
<!--  
id가 myid
password가 mypassword 일 때만 로그인 성공 메시지 출력

그렇지 않으면 
'아이디나 패스워드가 일치하지 않습니다.' 메시지 출력
-->

<!-- form[method="post"]>br+{ID }+input+br+{PW }input+br+input:s[value="login"] -->
<form action="" method="post">
	<br>ID 
	<input type="text" name="id">
	<br>PW 
	<input type="password" name="password">
	<br>
	<input type="submit" value="login">
</form>
<hr>

<%
String id = request.getParameter("id");
String pw = request.getParameter("password");

if(id.equals("myid") && pw.equals("mypassword")){
	out.print("<h1>login success!</h1>");
}else {
	out.print("<h1>ID or Password doesn't match</h1>");
}
%>


</body>
</html>