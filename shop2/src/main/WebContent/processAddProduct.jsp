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
    
    String sql = "insert into product values(?,?,?,?,?,?,?,?,?)";
    pstmt =  conn.prepareStatement(sql);
    /// mysql db product 테이블 9개 필드에 각각 값을 삽입
    pstmt.setString(1, productId);
    pstmt.setString(2, name);
    pstmt.setInt(3, price);
    pstmt.setString(4, description);
    pstmt.setString(5, category);
    pstmt.setString(6, manufacturer);
    pstmt.setLong(7, stock);
    pstmt.setString(8, condition);
    pstmt.setString(9, filename);
    
    pstmt.executeUpdate();
    
    if(pstmt != null){
    	pstmt.close();
    }
    if(conn != null){
    	conn.close();
    }
    
    response.sendRedirect("products.jsp");
%>







	

