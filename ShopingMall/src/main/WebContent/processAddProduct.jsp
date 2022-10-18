<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
<%@ page import="java.util.*" %>

<%
	request.setCharacterEncoding("utf-8");


	String filename ="";
	String realFolder = "C:\\upload";
	int maxSize = 10 * 1024 * 1024;
	String encType = "UTF-8";
	
	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());

	String productId = request.getParameter("productId");
	String name = request.getParameter("name");
	String unitPrice = request.getParameter("unitPrice");
	String description = request.getParameter("description");
	String manufacturer = request.getParameter("manufacturer");
	String category = request.getParameter("category");
	String unitsInStock = request.getParameter("unitsInStock");
	String condition = request.getParameter("condition");
%>

<%
	Integer price;
	
	if(unitPrice.isEmpty()){
		price = 0;
	}else{
		price = Integer.parseInt(unitPrice);
	}
%>

<!-- 가격이 입력되지 않았을 때 기본값을 0으로 지정 -->
<%
	long stock;

	if(unitsInStock.isEmpty()){
		stock = 0;
	}else{
		stock = Long.parseLong(unitsInStock);
	}
%>

<!-- 재고수량이 입력되지 않았을때 기본값을 0으로 지정함 -->

<%

	Enumeration files = multi.getFileNames();	// 전송 파라미터 중 파일을 받는 메소드
	String fname = (String)files.nextElement();	// 하나의 요소를 저장
	String fileName = multi.getFilesystemName(fname); 
	

%>

<%
	ProductRepository dao = ProductRepository.getInstacne();

	Product newProduct = new Product();
	newProduct.setProductId(productId);
	newProduct.setPname(name);
	newProduct.setUnitPrice(price);
	newProduct.setDescription(description);
	newProduct.setManufacturer(manufacturer);
	newProduct.setCategory(category);
	newProduct.setUnitsInStock(stock);
	newProduct.setCondition(condition);
	newProduct.setFilename(filename);
	
	dao.addProduct(newProduct);
	
	response.sendRedirect("products.jsp");
%>

<!-- 입력한 데이터를 newProduct 객체를 생성하여 입력  -->
