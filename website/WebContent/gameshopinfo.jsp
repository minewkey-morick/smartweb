<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="site.dto.Game,site.dao.GameRepository"%>
<%@ page errorPage="exceptionNoProductId.jsp"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<title>사이트 목록</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">사이트 정보</h1>
		</div>
	</div>
	<%
		String gameNum = request.getParameter("gameNum");
		GameRepository dao=GameRepository.getInstance();
		Game game = dao.getGameByNum(gameNum);
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-5">
				<img src="C:/upload/<%=game.getFilename()%>" style="width: 100%">
			</div>
			<div class="col-md-6">
				<h3><%=game.getGname()%></h3>
				<p>
					<b>간단 설명</b> :
					<%=game.getDescription()%>
				<p>
					<b>자세한 설명 링크</b> :
					<%=game.getLink()%>
				<p>
				<form method="post">
					<a href="gameshoplist.jsp" class="btn btn-secondary">사이트 목록 &raquo;</a>
				</form>
			</div>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>