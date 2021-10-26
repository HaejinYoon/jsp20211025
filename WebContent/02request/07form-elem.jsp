<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>07 form elem</title>
</head>
<body>

<%
List<String> list = new ArrayList<>();
list.add("apple");
list.add("phone");
list.add("coffee");
list.add("computer");
%>

<%
String num = request.getParameter("num");
%>

<h1>num번째 상품</h1>
<form>
	<input name="num">
	<input type="submit">
</form>
<hr>
<%
if(num==null){
%>
	<p> 해당 상품은 존재하지 않는 상품입니다.</p>
<%
	}else{
		if(num.equals("0")){
	%>
		<p><%=num%>번째 상품은<%= list.get(0)%> 입니다.</p>
	<%
		}else if(num.equals("1")){
	%>
		<p><%=num%>번째 상품은<%= list.get(1)%> 입니다.</p>
	<%
		}else if(num.equals("2")){
	%>
		<p><%=num%>번째 상품은<%= list.get(2)%> 입니다.</p>
	<%
		}else if(num.equals("3")){
	%>
		<p><%=num%>번째 상품은<%= list.get(3)%> 입니다.</p>
	<%
		}else{
	%>
		<p> 해당 상품은 존재하지 않는 상품입니다.</p>
	<%
		}
	}
	%>
<%-- num이 0~3d이면 --%>
<%-- num번 상품은 apple/phone/coffee/computer입니다 --%>

<%-- 그렇지 않으면 (null 이거나 0~3이 아니면 --%>
<%-- 해당상품이 존재하지 않습니다. --%>
</body>
</html>