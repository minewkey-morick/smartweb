function CheckAddGame(){
  
	var gameNum=document.getElementById("gameNum");
	var gname=document.getElementById("gname");

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
	if(!check(/^G[0-9]{2,11}$/, gameNum, "[게임 번호]\nG와 숫자를 조합하여 2~11자까지 입력하세요\n첫 글자는 반드시 G로 시작하세요")){
		return false;
	}
	//상품명 체크
	if(gname.value.length<1 || gname.value.length>12){
		alert("[게임 이름]\n최소 1자에서 최대 12자까지 입력하세요");
		gname.select();
		gname.focus();
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

	document.newGame.submit()
}