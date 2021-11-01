<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%--
 userid parameter 가 iamnormal이면 
	07view1normal.jsp로 포워딩
	
	userid parameter 가 iamvip이면
	07view2vip.jsp로 포워딩
	
--%>
<%
String uid = request.getParameter("userid");
if(uid.equals("iamnormal")){
%>
<jsp:forward page="07view1normal.jsp"></jsp:forward>
<%
}

if(uid.equals("iamvip")){
%>
<jsp:forward page="07view2vip.jsp"></jsp:forward>
<%
}
%>