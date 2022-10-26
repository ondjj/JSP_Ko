<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*"%>



<%
	request.setCharacterEncoding("utf-8");
	
	String filename ="";                        // 그림파일명 초기화
	String realFolder = request.getRealPath("./resources/img");    // 절대경로
	int maxSize = 10 * 1024 * 1024; // 그림 파일 최대 크기 10메가
	String encType = "utf-8";          // 인코딩 방식 설정
	
	MultipartRequest multi = new MultipartRequest(request,realFolder,maxSize,encType, new DefaultFileRenamePolicy());
	
	
	String productId = multi.getParameter("productId");
	String name = multi.getParameter("name");
	String unitPrice = multi.getParameter("unitPrice");
	String description = multi.getParameter("description");
	String manufacturer = multi.getParameter("manufacturer");
	String category = multi.getParameter("category");
	String unitsInStock = multi.getParameter("unitsInStock");
	String condition = multi.getParameter("condition");
%>

<%
	Integer price;
	
	if (unitPrice.isEmpty())
		price = 0;
		
	else
		 price = Integer.valueOf(unitPrice);
%>
	<!-- 가격이 입력되지 않았을때 기본값을 0으로 지정함 -->


<%
	long stock;
	
	if (unitsInStock.isEmpty())
		stock = 0;
	else
		stock = Long.valueOf(unitsInStock);
%>

	<!-- 재고수량이 입력되지 않았을때 기본값을 0으로 지정함 -->

<%
    Enumeration files = multi.getFileNames();         // 전송 파라미터 중 파일을 받는 메소드
    String fname =(String)files.nextElement();       // 받은 열거형을 String 타입으로 변환
    filename = multi.getFilesystemName(fname); // 서버에 업로드된 파일을 가져오는 메소드
%>

<%
	ProductRepository dao = ProductRepository.getInstance();
	
	Product newProduct = new Product();
	newProduct.setProductId(productId);
	newProduct.setPname(name);
	newProduct.setUnitPrice(price);
	newProduct.setDescription(description);
	newProduct.setManufactirer(manufacturer);
	newProduct.setCategory(category);
	newProduct.setUnitsInStock(stock);
	newProduct.setCondition(condition);
	newProduct.setFilename(filename);
	
	dao.addProduct(newProduct);
	response.sendRedirect("products.jsp");
%>
