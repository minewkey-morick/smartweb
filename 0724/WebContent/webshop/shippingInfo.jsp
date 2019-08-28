<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../resources/css/bootstrap.min.css">
<title>배송 정보</title>
</head>
<script type="text/javascript">
	function CheckForm() {
		var form = document.checkForm;

		if (form.name.value == "") {
			alert("주문자의 이름을 입력해 주세요.");
			document.checkForm.name.select();
			return false;
		} else if (form.shippingDate.value == "") {
			alert("주문하실 날짜를 입력해 주세요.");
			document.checkForm.shippingDate.select();
			return false;
		} else if (form.country.value == "") {
			alert("국가를 입력해 주세요.");
			document.checkForm.country.select();
			return false;
		} else if (form.zipCode.value == "") {
			alert("우편번호를 입력해 주세요.");
			document.checkForm.zipCode.select();
			return false;
		} else if (form.addressName.value == "") {
			alert("주소를 입력해 주세요.");
			document.checkForm.addressName.select();
			return false;
		}
		//이름은 한글,영어/날짜는 날짜형식/국가는 한글,영어/우편번호는 숫자5자리/주소는 한글로 '조건걸기'

		form.submit(); //←버튼의 기능을 서브밋으로 만들어줌(form에 value값까지 넣은 경로면 form name으로 꼭 해줘야함)
	}
</script>
<body>
	<jsp:include page="header.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">배송정보</h1>
		</div>
	</div>

	<div class="container">
		<form action="./processShippingInfo.jsp" class="form-horizontal"
			method="post" name="checkForm">
			<input type="hidden" name="cartId"
				value="<%=request.getParameter("cartId")%>" />
			<div class="form-group row">
				<label class="col-sm-2">성명</label>
				<div class="col-sm-3">
					<input type="text" id="name" name="name" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">주문일</label>
				<div class="col-sm-3">
					<input type="text" id="shippingDate" name="shippingDate"
						class="form-control">(yyyy/mm/dd)
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">국가</label>
				<div class="col-sm-3">
					<input type="text" id="country" name="country" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">우편번호</label>
				<div class="col-sm-5">
					<input name="zipCode" id="zipCode" type="text" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">주소</label>
				<div class="col-sm-3">
					<input type="text" id="addressName" name="addressName"
						class="form-control">
				</div>
			</div>

			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<a href="./cart.jsp?cartId=<%=request.getParameter("cartId") %>"
						class="btn btn-secondary" role="button"> 이전</a> 
						<input type="button" class="btn btn-primary" value="주문하기" onclick="CheckForm()"/>
						<a href="./checkOutCancelled.jsp" class="btn btn-secondary"	role="button"> 취소</a>
				</div>
			</div>
		</form>
	</div>
</body>
</html>