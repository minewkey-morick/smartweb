<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList,site.dto.Game" %> 
<%@ page import="site.dao.GameRepository" %>
<%@ page import="java.sql.*" %>
   

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게임 편집</title>
<script type="text/javascript">
	function deleteConfirm(id){
		if(confirm("해당 게임을 삭제합니다.") == true)
			location.href="./deleteGame.jsp?id="+id;
		else
			return;
	}
</script>
<link rel="stylesheet" href="./css/bootstrap.min.css"/>
<%
	String edit=request.getParameter("edit");
%>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				상품 편집
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
				<p><%=rs.getString("link") %>
				<p><%=rs.getString("g_description") %>
				<p><%
						if(edit.equals("update")){
							
					%>
					<a href="./updateGame.jsp?id=<%=rs.getString("g_num") %>" class="btn btn-success" role="button"> 수정 &raquo;></a>
					<%
						}else if(edit.equals("delete")){
					%>
					<a href="#" onclick="deleteConfirm('<%=rs.getString("g_num") %>')" class="btn btn-danger" role="button"> 삭제 &raquo;></a>
					<%
						}
					%>
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
	</div>
	
	<%@include file="footer.jsp" %>
	
</body>
</html>