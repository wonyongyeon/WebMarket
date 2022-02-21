<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
int a = 2;
int b = 3;
int sum = a+b;
out.println("2 + 3 = "+sum);
out.println("<h1>하나</h1>");
out.println("<script>alert('안녕?');</script>");
%>
</body>
</html>