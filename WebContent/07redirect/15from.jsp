<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.net.URLEncoder"%>
<%request.setCharacterEncoding("utf-8");%>
<%
Map<String, String> map = new HashMap<>();
map.put("param1", "자바");
map.put("param2", "hello world");
map.put("param3", "스프링");

Set<String> keys = map.keySet();
keys = map.keySet();

String loc = "?";
for(String key : keys){
	loc+=key+"="+URLEncoder.encode(map.get(key), "utf-8")+"&";
}
if(map.size()>0){
	loc =loc.substring(0, loc.length()-1);
}
response.sendRedirect("15to.jsp"+loc);
%>