<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>


<%
String code = request.getParameter("code");
%>

<%
if ("food".equals(code)) {
	String[] foodlist = {"apple", "grape", "orange", "kiwi"};
	request.setAttribute("food", foodlist);
%>
	<jsp:forward page="10pagea.jsp"></jsp:forward>
<% 
} else if ("song".equals(code)){
	List<String> songlist = new ArrayList<>();
	songlist.add(0, "Dynamite");
	songlist.add(1, "Not Shy");
	songlist.add(2, "Savage");
	songlist.add(3, "Wannabe");
	request.setAttribute("song", songlist);
%>
	<jsp:forward page="10pageb.jsp"></jsp:forward>
<%
}
%>