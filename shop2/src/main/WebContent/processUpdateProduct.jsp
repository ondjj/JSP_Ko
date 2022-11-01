<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*" %>
<%@ include file="dbconn.jsp" %>


<%
	request.setCharacterEncoding("utf-8");
	
	String filename ="";                        // 그림파일명 초기화
	String realFolder = request.getRealPath("./resources/images");    // 절대경로
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
    
    PreparedStatement pstmt = null;
    
    ResultSet rs = null;
    
    String sql = "select * from product where p_id=?";
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, productId);
    rs = pstmt.executeQuery();
    
    if(rs.next()){
    	if(filename != null){
    		sql = "update product set p_name=?, p_unitPrice=?, p_description=?, p_category=?, p_manufacturer=?, p_unitInStock=?, p_condition=?, p_filename=? where p_id=?";
    		pstmt = conn.prepareStatement(sql);
    		pstmt.setString(1, name);
    		pstmt.setInt(2, price);
    		pstmt.setString(3, description);
    		pstmt.setString(4, category);
    		pstmt.setString(5, manufacturer);
    		pstmt.setLong(6, stock);
    		pstmt.setString(7, condition);
    		pstmt.setString(8, filename);
    		pstmt.setString(9, productId);
    		pstmt.executeUpdate();
    	}else{
    		sql = "update product set p_name=?, p_unitPrice=?, p_description=?, p_category=?, p_manufacturer=?, p_unitInStock=?, p_condition=?, p_filename=? where p_id=?";
    		pstmt = conn.prepareStatement(sql);
    		pstmt.setString(1, name);
    		pstmt.setInt(2, price);
    		pstmt.setString(3, description);
    		pstmt.setString(4, category);
    		pstmt.setString(5, manufacturer);
    		pstmt.setLong(6, stock);
    		pstmt.setString(7, condition);
    		pstmt.setString(8, filename);
    		pstmt.setString(9, productId);
    		pstmt.executeUpdate();
    	}
    	if(rs!=null) rs.close();
    	if(pstmt!=null) pstmt.close();
    	if(conn!=null) conn.close();
    	
    	
    }
    response.sendRedirect("editProduct.jsp?edit=update");
%>
    