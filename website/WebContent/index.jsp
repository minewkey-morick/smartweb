<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="site.model.BoardDTO"%>
<%@ page import="site.model.BoardDAO"%>
<%
	List boardList = (List) request.getAttribute("boardlist");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영차영차 보드게임</title>
<link rel="stylesheet" href="./css/bootstrap.min.css"/>
</head>
<body>
	<%@include file="header.jsp" %>
	
	<div class="jumbotron">
		<div class="container" align="flex">
			<img src="./image/IMG_20191113_102143.png") height="350px" width="800px" align="center">
		</div>
	</div>
	<div class="container">
		<div class="text-center">
			<div style="padding-top: 50px">
				<table class="table table-hover">
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성일</th>
						<th>조회</th>
						<th>글쓴이</th>
					</tr>
					<%@ include file="dbconn.jsp" %>
					<%
						PreparedStatement pstmt=null;
						ResultSet rs=null;
						String sql="select * from board ORDER BY num DESC";
						pstmt=conn.prepareStatement(sql);
						rs=pstmt.executeQuery();
						while (rs.next()){
					%>
					<tr>
						<td><%=rs.getString("num") %></td>
						<td><%=rs.getString("subject") %></td>
						<td><%=rs.getString("regist_day") %></td>
						<td><%=rs.getString("hit") %></td>
						<td><%=rs.getString("name") %></td>
					</tr>
					
					<%
						}
					
					if(rs!=null)
						rs.close();
					if(pstmt!=null)
						pstmt.close();
					if(conn!=null)
						conn.close();
					%>
				</table>
			</div>
		</div>
	</div>
	
	<%@include file="footer.jsp" %>
</body>
</html>