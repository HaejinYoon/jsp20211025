<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>36 Log-in Process</title>
</head>
<body>

<hr>


<%
String id = request.getParameter("uid");
String pw = request.getParameter("pwd");
if(id !=null && pw != null){
	
	if(id.equals("myid") && pw.equals("mypassword")){
		out.print("<h1>login success!</h1>");
	}else {
		out.print("<script>");
		out.print("alert('ID or Password does not match')");
		out.print("</script>");
		out.print("<h1>login failed!</h1>");
	}
}
%>
<a href="<%= request.getContextPath() %>/02request/35login-form.jsp">로그인 페이지로 돌아가기</a>
<hr>

id <%= request.getParameter("uid") %> <br>
pw <%= request.getParameter("pwd") %> <br>

</body>
</html>