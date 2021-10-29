<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="sample01.MyBook" %>
<%request.setCharacterEncoding("utf-8");%>

<%
	MyBook book = (MyBook) request.getAttribute("book");
%>

<div>

Title : <%= book.getTitle() %> <br>

Price : <%= book.getPrice() %> <br>

</div>