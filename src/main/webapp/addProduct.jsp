<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 등록</title>
<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"> -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/bootstrap.min.css">
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/validation.js"></script>
</head>
<body>
	<%@ include file="menu.jsp" %>
<div class="jumbotron">
	<div class="container">
		<h1 class="display-3">
			상품 등록
		</h1>
	</div>
</div>
<div class="container">
	<form name="newProduct" action="processAddProduct.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
	<div class="form-group row">
		<label class="col-sm-2">상품 코드</label>
		<div class="col-sm-3">
			<input type="text" name="productId" id="productId" class="form-control">
		</div>
	</div>
	<div class="form-group row">
		<label class="col-sm-2">상품명</label>
		<div class="col-sm-3">
			<input type="text" name="name" id="name" class="form-control">
		</div>
	</div>
	<div class="form-group row">
		<label class="col-sm-2">가격</label>
		<div class="col-sm-3">
			<input type="number" name="unitPrice" id="unitPrice" class="form-control">
		</div>
	</div>
	<div class="form-group row">
		<label class="col-sm-2">상세 정보</label>
		<div class="col-sm-3">
			<textarea name="description" cols="50" rows="2" class="form-control"></textarea>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-sm-2">제조사</label>
		<div class="col-sm-3">
			<input type="text" name="manufacturer" class="form-control">
		</div>
	</div>
	<div class="form-group row">
		<label class="col-sm-2">분류</label>
		<div class="col-sm-3">
			<input type="text" name="category" class="form-control">
		</div>
	</div>
	<div class="form-group row">
		<label class="col-sm-2">재고 수</label>
		<div class="col-sm-3">
			<input type="text" name="unitsInStock" id="unitsInStock" class="form-control">
		</div>
	</div>
	<div class="form-group row">
		<label class="col-sm-2">상태</label>
		<div class="col-sm-5">
			<input type="radio" name="condition" value="New"> 신규 제품
			<input type="radio" name="condition" value="Old"> 중고 제품
			<input type="radio" name="condition" value="Refurbished"> 재생 제품
		</div>
	</div>
	<div class="form-group row">
		<label class="col-sm-2">이미지</label>
		<div class="col-sm-5">
			<input type="file" name="productImage" class="form-control">
		</div>
	</div>
	<div class="form-group row">
		<div class="col-sm-offset-2 col-sm-10">
			<input type="button" class="btn btn-primary" value="등록" onclick="CheckAddProduct();">
		</div>
	</div>
	</form>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>