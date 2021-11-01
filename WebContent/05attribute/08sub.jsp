<%@page import="sample01.MyBook"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>

<%-- <%
ArrayList<MyBook> books = (ArrayList<MyBook>) request.getAttribute("book");

for( int i=0; i<books.size(); i++){
	request.setAttribute("book", books.get(i));
%>
	<li>
	<%= book.getTitle() %>
	</li>
<%
}
%>
 --%>
<%
Object attr = request.getAttribute("books");
List<MyBook> books = (List<MyBook>) attr;

%>

<ul>
	<%
		for (MyBook book : books) {
	%>
			<li><%= book.getTitle() %> : <%= book.getPrice() %></li>
	<%
		}
	%>
</ul>