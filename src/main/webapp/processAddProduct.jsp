<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*" %>
<%@ include file="dbconn.jsp" %>
<%
request.setCharacterEncoding("UTF-8");

String filename = "";
String realFolder = "/resources/images";
int maxSize = 5*1024*1024;
String encType = "utf-8";

MultipartRequest multi = new MultipartRequest(
		request, 
		request.getRealPath(realFolder), 
		maxSize, 
		encType, 
		new DefaultFileRenamePolicy());

String productId = multi.getParameter("productId");
String name = multi.getParameter("name");
String unitPrice = multi.getParameter("unitPrice");
String description = multi.getParameter("description");
String manufacturer = multi.getParameter("manufacturer");
String category = multi.getParameter("category");
String unitsInStock = multi.getParameter("unitsInStock");
String condition = multi.getParameter("condition");

Integer price = unitPrice == null || "".equals(unitPrice) ? 0 : Integer.parseInt(unitPrice);

/*
if (unitPrice.isEmpty()) {
	price = 0;
} else {
	price = Integer.valueOf(unitPrice);
}
*/

long stock;

if (unitsInStock.isEmpty()) {
	stock = 0;
} else {
	stock = Long.valueOf(unitsInStock);
	//stock = Long.parseLong(unitsInStock);
}

Enumeration files = multi.getFileNames();
String fname = (String) files.nextElement();
String fileName = multi.getFilesystemName("productImage");

PreparedStatement pstmt = null;

String sql = "insert into product values(?,?,?,?,?,?,?,?,?)";
pstmt = conn.prepareStatement(sql);
pstmt.setString(1, productId);
pstmt.setString(2, name);
pstmt.setInt(3, price);
pstmt.setString(4, description);
pstmt.setString(5, category);
pstmt.setString(6, manufacturer);
pstmt.setLong(7, stock);
pstmt.setString(8, condition);
pstmt.setString(9, fileName);
pstmt.executeUpdate();

if (pstmt != null)
	pstmt.close();
if (conn != null)
	conn.close();
response.sendRedirect("products.jsp");
%>
































