<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository"%>
<%@ page errorPage="exceptionNoProductId.jsp"%>
<%
ProductRepository dao = ProductRepository.getInstance();
%>
<!DOCTYPE html>
<html>  
<head>
<meta charset="UTF-8">
<title>상품 상세 정보</title>
<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"> -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/bootstrap.min.css">
<script type="text/javascript">
	function addToCart() {
		if (confirm("상품을 장바구니에 추가하시겠습니까?")) {
			document.addForm.submit();
		} else {
			document.addForm.reset();
		}
	}
</script>
</head>
<body>
	<%@ include file="menu.jsp" %>
<div class="jumbotron">
	<div class="container">
		<h1 class="display-3">
			상품 정보
		</h1>
	</div>
</div>
<%
String id = request.getParameter("id");
Product product = dao.getProductById(id);
%>
<div class="container">
	<div class="row">
		<div class="col-md-5">
			<img src="./resources/images/<%=product.getFilename()%>" style="width:100%">
		</div>
		<div class="col-md-6">
			<h3><%=product.getPname() %></h3>
			<p><%=product.getDescription() %></p>
			<p> <b>상품 코드 : </b><span class="badge badge-danger"><%=product.getProductId()%></span></p>
			<p> <b>제조사</b> : <%=product.getManufacturer() %></p>
			<p> <b>분류</b> : <%=product.getCategory() %></p>
			<p> <b>재고 수</b> : <%=product.getUnitsInStock() %></p>
			<h4><%=product.getUnitPrice() %>원</h4>			
			<p> <form name="addForm" action="./addCart.jsp?id=<%=product.getProductId()%>" method="post"> 
				<a href="#" class="btn btn-info" onclick="addToCart()"> 상품 주문 &raquo;</a>
				<a href="./cart.jsp" class="btn btn-warning"> 장바구니 &raquo;</a>
				<a href="products.jsp" class="btn btn-secondary"> 상품 목록 &raquo;</a>
			</form>
		</div>
	</div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>