<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%
	String id = request.getParameter("cartId");
	if (id == null || id.trim().equals("")) {
		response.sendRedirect("cart.jsp");
		return;
	}
	// session.invalidate();  로그인 상태나 최근본 상품 등도 싹 다 삭제
	session.removeAttribute("cartlist");  // cartlist(장바구니)만 삭제 
	
	response.sendRedirect("cart.jsp");
%>