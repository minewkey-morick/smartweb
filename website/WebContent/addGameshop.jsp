<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./css/bootstrap.min.css">
<script type="text/javascript" src="./js/validation.js"></script>
<meta charset="UTF-8">
<title>상품 등록</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				목록 추가
			</h1>
		</div>
	</div>

	<div class="container">
		<form name="newGame" action="processAddGame.jsp"
			class="form-horizontal" method="post" enctype="multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-2">사이트 이름</label>
				<div class="col-sm-3">
					<input type="text" id="gname" name="gname" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">링크</label>
				<div class="col-sm-3">
					<input type="text" id="link" name="link" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">간단한 사이트 설명</label>
				<div class="col-sm-5">
					<textarea name="description" rows="2" cols="50"
						class="form-control"></textarea>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">사이트 사진</label>
				<div class="col-sm-5">
					<input type="file" name="gameImage" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" class="btn btn-primary" value="등록하기">
				</div>
			</div>
		</form>
	</div>
</body>
</html>