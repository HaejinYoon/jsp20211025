<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="sample01.MyBook" %>
<%request.setCharacterEncoding("utf-8");%>

<!-- 06signup-process.jsp 참고 -->
<%
List<MyBook> books = (List<MyBook>) application.getAttribute("books");
if(books == null){
	books = new ArrayList<>();
	application.setAttribute("books", books);
}
String bookTitle = request.getParameter("title");
String priceString = request.getParameter("price");
priceString = priceString == null ? "0" : priceString;
int bookPrice = Integer.parseInt(priceString);

MyBook book = new MyBook(bookTitle, bookPrice);
//리스트에 추가
books.add(book);

response.sendRedirect("07book-list.jsp");
%>


<!-- Map<String, String> book = (Map<String, String>) application.getAttribute("books");
if(book == null){
	book = new HashMap<>();
	application.setAttribute("books", book);
}

String bookTitle = request.getParameter("title");
String bookPrice = request.getParameter("price");
if(bookTitle != null && bookPrice != null)
	book.put(bookTitle, bookPrice);
response.sendRedirect("07book-list.jsp"); -->