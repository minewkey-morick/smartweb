<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@	page import="webshop.dto.Product"%>
<%@	page import="webshop.dao.ProductRepository"%>
<%@ page
	import="com.oreilly.servlet.*, com.oreilly.servlet.multipart.*, java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp"%>

<%
	request.setCharacterEncoding("UTF-8");

	String filename="";
	String realFolder="c:/upload";
	int maxSize=5*1024*1024;
	String encType="UTF-8";
	
	MultipartRequest multi=new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());

	String productId=multi.getParameter("productId");
	String name=multi.getParameter("name");
	String unitPrice=multi.getParameter("unitPrice");
	String description=multi.getParameter("description");
	String manufacturer=multi.getParameter("manufacturer");
	String category=multi.getParameter("category");
	String unitInStock=multi.getParameter("unitInStock");
	String condition=multi.getParameter("condition");
	
	Integer price;
	
	if(unitPrice.isEmpty())
		price=0;
	else
		price=Integer.valueOf(unitPrice);
	
	long stock;
	
	if(unitInStock.isEmpty())
		stock=0;
	else
		stock=Long.valueOf(unitInStock);
	
	Enumeration files=multi.getFileNames();
	String fname=(String) files.nextElement();
	String fileName=multi.getFilesystemName(fname);
	
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	
	String sql="select * from product where p_id=?";
	pstmt=conn.prepareStatement(sql);
	pstmt.setString(1, productId);
	rs=pstmt.executeQuery();
	
	if(rs.next()){
		if(fileName!=null){
			sql="update product set p_name=?, p_unitPrice=?, p_description=?, p_manufacturer=?, p_category=?, p_unitInStock=?, p_condition=?, p_fileName=? where p_id=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setInt(2, price);//←새로 선언한 pirce값으로 변환했기 때문에 그 값을 넣어줘야함
			pstmt.setString(3, description);
			pstmt.setString(4, manufacturer);
			pstmt.setString(5, category);
			pstmt.setLong(6, stock);//←새로 선언한 stock값으로 변환했기 때문에 그 값을 넣어줘야함
			pstmt.setString(7, condition);
			pstmt.setString(8, fileName);
			pstmt.setString(9, productId);
			pstmt.executeUpdate();
		}else{
			sql="update product set p_name=?, p_unitPrice=?, p_description=?, p_manufacturer=?, p_category=?, p_unitInStock=?, p_condition=?, p_fileName=? where p_id=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setInt(2, price);//←새로 선언한 pirce값으로 변환했기 때문에 그 값을 넣어줘야함
			pstmt.setString(3, description);
			pstmt.setString(4, manufacturer);
			pstmt.setString(5, category);
			pstmt.setLong(6, stock);//←새로 선언한 stock값으로 변환했기 때문에 그 값을 넣어줘야함
			pstmt.setString(7, condition);
			pstmt.setString(8, fileName);
			pstmt.setString(9, productId);
			pstmt.executeUpdate();
		}
	}
	if(rs!=null)
		rs.close();
	if(pstmt!=null)
		pstmt.close();
	if(conn!=null)
		pstmt.close();
	/*
	ProductRepository dao=ProductRepository.getInstance();
	
	Product newProduct=new Product();
	newProduct.setProductId(productId);
	newProduct.setPname(name);
	newProduct.setUnitPrice(price);
	newProduct.setDescription(description);
	newProduct.setManufacturer(manufacturer);
	newProduct.setCategory(category);
	newProduct.setUnisInStock(stock);
	newProduct.setCondition(condition);
	newProduct.setFilename(fileName);
	
	dao.addProduct(newProduct);*/
	
	response.sendRedirect("editProduct.jsp?edit=update");
%>
