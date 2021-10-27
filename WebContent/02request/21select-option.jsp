<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>21 Select Option</title>
</head>
<body>
<!-- form>input:number+select>(opt)*4^input:number+input:s -->
<form action="">
	<input type="number" name="num1" id="">
	<select name="operator" id="">
		<option value="plus">+</option>
		<option value="minus">-</option>
		<option value="times">X</option>
		<option value="divide">/</option>
	</select>
	<input type="number" name="num2" id="">
	<input type="submit" value="Send">
</form>

<hr>

<!--계산 결과 출력  -->
<%
String n1 = request.getParameter("num1");
String n2 = request.getParameter("num2");
String opt = request.getParameter("operator");
String optStr="";
try{
	int a = Integer.parseInt(n1);
	int b = Integer.parseInt(n2);
	out.print("a: "+ a+"<br>");
	out.print("b: "+ b+"<br>");
	
	//out.print(a opt b);
	if(opt.equals("plus")){
		optStr="+";
		out.print("Two numbers "+optStr+" Operation : ");
		out.print(a+b);
	}else if(opt.equals("minus")){
		optStr="-";
		out.print("Two numbers "+optStr+" Operation : ");
		out.print(a+b);
	}else if(opt.equals("times")){
		optStr="X";
		out.print("Two numbers "+optStr+" Operation : ");
		out.print(a*b);
	}else{
		optStr="/";
		out.print("Two numbers "+optStr+" Operation : ");
		out.print(a/b);
	}
}catch(NumberFormatException e){
	out.print("Enter Number");
}
%>
</body>
</html>