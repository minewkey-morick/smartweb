<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>목록 오류</title>
<link rel="stylesheet" href="./css/bootstrap.min.css"/>
</head>
<body>
	<jsp:include page="header.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h2 class="alert alert-danger">해당 목록이 존재하지 않습니다.</h2>
		</div>
	</div>
	<div class="container">
		<p><%=request.getRequestURL()%>?<%=request.getQueryString()%>
	</div>
	<%@include file="footer.jsp" %>
</body>
</html>