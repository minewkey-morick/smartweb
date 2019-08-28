<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String sessionId=(String)session.getAttribute("sessionId");
	%>
	<nav class="navbar navbar-expand navbar-dark bg-dark">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="./welcome.jsp">Home</a>
			</div>
		</div>
		<div>
			<ul class="navbar-nav mr-auto">
				<c:choose>
					<c:when test="${empty sessionId }">
						<li class="nav-item"><a class="nav-link" href="./loginMember.jsp">로그인</a></li>
						<li class="nav-item"><a class="nav-link" href="./addMember.jsp">회원 가입</a></li>
					</c:when>
					<c:otherwise>
						<li style="padding-top: 7px; color:#fff">[${sessionId }]님</li>
						<li class="nav-item"><a class="nav-link" href="./logoutMember.jsp">로그아웃</a></li>
						<li class="nav-item"><a class="nav-link" href="./updateMember.jsp">회원 수정</a></li>
					</c:otherwise>
				</c:choose>
				<li class="nav-item"><a class="nav-link" href="./products.jsp">상품 목록</a></li>
				<li class="nav-item"><a class="nav-link" href="./addProduct.jsp">상품 등록</a></li>
				<li class="nav-item"><a class="nav-link" href="./editProduct.jsp?edit=update">상품 수정</a></li>
				<li class="nav-item"><a class="nav-link" href="./editProduct.jsp?edit=delete">상품 삭제</a></li>
				<li class="nav-item"><a class="nav-link" href="<c:url value="./BoardListAction.do?pageNum=1"/>">게시판</a></li>
			</ul>
		</div>
	</nav>
</body>
</html>