<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 아이디 오류</title>
<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"> -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/bootstrap.min.css">
</head>
<body>
	<%@ include file="menu.jsp" %>
<div class="jumbotron">
	<div class="container">
		<h2 class="alert alert-danger">해당 상품이 존재하지 않습니다.</h2>
	</div>
</div>
<div class="container">
	<p><%=request.getRequestURL() %><%=request.getQueryString() %>
	<p><a href="product.jsp" class="btn btn-secondary"> 상품 목록 &raquo;</a>
</div>
</body>
</html>