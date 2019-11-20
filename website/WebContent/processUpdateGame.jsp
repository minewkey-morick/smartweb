<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@	page import="site.dto.Game"%>
<%@	page import="site.dao.GameRepository"%>
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

	String gameNum=multi.getParameter("gameNum");
	String gname=multi.getParameter("gname");
	String link=multi.getParameter("link");	
	String description=multi.getParameter("description");
	
	Enumeration files=multi.getFileNames();
	String fname=(String) files.nextElement();
	String fileName=multi.getFilesystemName(fname);
	
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	
	String sql="select * from game where g_num=?";
	pstmt=conn.prepareStatement(sql);
	pstmt.setString(1, gameNum);
	rs=pstmt.executeQuery();
	
	if(rs.next()){
		if(fileName!=null){
			sql="update game set g_name=?, link=?, g_description=?, p_fileName=? where g_num=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, gname);
			pstmt.setString(2, link);
			pstmt.setString(3, description);
			pstmt.setString(4, fileName);
			pstmt.setString(5, gameNum);
			pstmt.executeUpdate();
		}else{
			sql="update game set g_name=?, link=?, g_description=?, p_fileName=? where g_num=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, gname);
			pstmt.setString(2, link);
			pstmt.setString(3, description);
			pstmt.setString(4, fileName);
			pstmt.setString(5, gameNum);
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
	
	response.sendRedirect("editGame.jsp?edit=update");
%>
