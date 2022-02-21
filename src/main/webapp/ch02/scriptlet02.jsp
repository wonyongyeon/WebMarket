<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
for (int i=0; i<=10; i++) {
	if (i%2 == 0) {
		//out.println(i + "<br>");
%>
		<%=i+"<br>" %>
<%
	}
}
%>

<% for (int i=0; i<10; i++) { %>
<h1>안녕하세요</h1>
<% } %>

<%=new Date() %>


</body>
</html>