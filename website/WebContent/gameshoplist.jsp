<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList,site.dto.Game" %> 
<%@ page import="site.dao.GameRepository" %>
<%@ page import="java.sql.*" %>
   
   
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게임 판매사이트</title>
<link rel="stylesheet" href="./css/bootstrap.min.css"/>
<%
	String edit=request.getParameter("edit");
%>
</head>
<body>
	<%@include file="header.jsp" %>
	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				게임 판매사이트 목록
			</h1>
		</div>
	</div>
	
	<div class="container">
		<div class="row" align="center">
			<%@ include file="dbconn.jsp" %>
			<%
				PreparedStatement pstmt=null;
				ResultSet rs=null;
				String sql="select * from game";
				pstmt=conn.prepareStatement(sql);
				rs=pstmt.executeQuery();
				while (rs.next()){
			%>
			<div class="col-md-4">
				<img src="c:/upload/<%=rs.getString("g_fileName") %>" style="width: 100%">
				<h3><%=rs.getString("g_name") %></h3>
				<p><%=rs.getString("g_description") %>
				<p><a href="<%=rs.getString("g_link") %>" class="btn btn-primary" role="button">사이트 연결 &raquo;</a>
				<%-- <p><a href="./gameshopinfo.jsp?g_num=<%=rs.getString("g_num") %>" class="btn btn-secondary" role="button"> 상세 정보 &raquo;</a> --%>
			</div>
			<%
				}
			
			if(rs!=null)
				rs.close();
			if(pstmt!=null)
				pstmt.close();
			if(conn!=null)
				conn.close();
			%>
		</div>
		<hr/>
		<%-- <%
			String sessionGrade=(String)session.getAttribute("sessionGrade");
		%>
		<p><%=sessionGrade %>
		<c:if test="${sessionGrade eq 3}">
			<div align="center"><a href="./addGameshop.jsp" class="btn btn-secondary">사이트 추가 &raquo;</a></div>
		</c:if> --%>
		<div align="center"><a href="./addGameshop.jsp" class="btn btn-secondary">사이트 추가 &raquo;</a></div>
	</div>
	
	<%@include file="footer.jsp" %>
	
</body>
</html>