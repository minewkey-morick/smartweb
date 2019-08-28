<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Database SQL</title>
</head>
<body>
<%@ include file="dbconn.jsp" %>
<%
	request.setCharacterEncoding("utf-8");

	String id=request.getParameter("id");
	String passwd=request.getParameter("passwd");
	String name=request.getParameter("name");
	
	ResultSet rs=null;
	PreparedStatement pstmt=null;
	
	try{
		String sql="select id, passwd from member where id=?";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs=pstmt.executeQuery();
		
		if(rs.next()){
			String rId=rs.getString("id");
			String rPasswd=rs.getString("passwd");
			
			if(id.equals(rId) && passwd.equals(rPasswd)){
				sql="delete from member where id=? and passwd=?";
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1, id);
				pstmt.setString(2, passwd);
				pstmt.executeUpdate();
				out.println("member 테이블의 데이터를 삭제했습니다.");
			}else
				out.println("일치하는 번호가 아닙니다.");
		}else
			out.println("member 테이블에 일치하는 아이디가 없습니다.");				
	}catch(SQLException ex){
		out.println("SQLException: "+ex.getMessage());
	}finally{
		if(rs!=null)
			rs.close();
		if(pstmt!=null)
			pstmt.close();
		if(conn!=null)
			conn.close();
	}
%>
</body>
</html>
