<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@	page import="site.dto.Game" %>
<%@	page import="site.dao.GameRepository" %>
<%@ page import="com.oreilly.servlet.*, com.oreilly.servlet.multipart.*, java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ include file="dbconn.jsp" %>

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
	
	GameRepository dao=GameRepository.getInstance();
	
	PreparedStatement pstmt = null;

	String sql = "INSERT INTO game VALUES(?,?,?,?,?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, gameNum);
	pstmt.setString(2, gname);
	pstmt.setString(3, link);
	pstmt.setString(4, description);
	pstmt.setString(5, fileName);
	pstmt.executeUpdate();
		
	if (pstmt != null){
		pstmt.close();
	}
	if (conn != null){
		conn.close();
	}
	
	Game newGame=new Game();
	newGame.setGameNum(gameNum);
	newGame.setGname(gname);
	newGame.setLink(link);
	newGame.setDescription(description);
	newGame.setFilename(fileName);
	dao.addGame(newGame);	
	
	response.sendRedirect("gameshoplist.jsp");
%>

