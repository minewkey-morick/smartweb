function CheckAddProduct(){

	var productId=document.getElementById("productId");
	var name=document.getElementById("name");
	var unitPrice=document.getElementById("unitPrice");
	var unitInStock=document.getElementById("unitInStock");

//	if (newProduct.productId.value == "") {
//	alert("상품코드를 입력해 주세요.");
//	document.newProduct.productId.select();
//	return false;
//	} else if (newProduct.name.value == "") {
//	alert("상품명을 입력해 주세요.");
//	document.newProduct.name.select();
//	return false;
//	}else if (newProduct.unitPrice.value == "") {
//	alert("가격을 입력해 주세요.");
//	document.newProduct.unitPrice.select();
//	return false;
//	}else if (newProduct.unitInStock.value == "") {
//	alert("재고 수를 입력해 주세요.");
//	document.newProduct.unitInStock.select();
//	return false;
//	}
	//상품 코드 체크
	if(!check(/^P[0-9]{4,11}$/, productId, "[상품 코드]\nP와 숫자를 조합하여 4~11자까지 입력하세요\n첫 글자는 반드시 P로 시작하세요")){
		return false;
	}
	//상품명 체크
	if(name.value.length<2 || name.value.length>12){
		alert("[상품명]\n최소 2자에서 최대 12자까지 입력하세요");
		name.select();
		name.focus();
		return false;
	}
	//상품 가격 체크
	if(unitPrice.value.length==0||isNaN(unitPrice.value)){
		alert("[가격]\n숫자만 입력하세요");
		unitPrice.select();
		unitPrice.focus();
		return false;
	}

	if(unitPrice.value<0){
		alert("[가격]\n음수는 입력할 수 없습니다");
		unitPrice.select();
		unitPrice.focus();
		return false;
	}else if(!check(/^\d+(?:[.]?[\d]?[\d])?$/, unitPrice, "[가격]\n소수점 둘째 자리까지만 입력하세요"))
		return false;
	//재고 수 체크
	//if(/^[0-9]{1,5}$/, unitInStock, "[재고 수]\n숫자만 입력하세요.")){
	if(unitInStock.value.length==0||isNaN(unitInStock.value)){
		alert("[재고 수]\n숫자만 입력하세요");
		unitInStock.select();
		unitInStock.focus();
		return false;
	}
	if(unitInStock.value<0){
		alert("[재고 수]\n음수는 입력할 수 없습니다");
		unitInStock.select();
		unitInStock.focus();
		return false;
	}
	function check(regExp, e, msg){

		if(regExp.test(e.value)){
			return true;
		}
		alert(msg);
		e.select();
		e.focus();
		return false;
	}

	document.newProduct.submit()
}