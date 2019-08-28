<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="webshop.dto.Product" %>
<%@ page import="webshop.dao.ProductRepository" %>

<%
	String id=request.getParameter("id");
	if(id==null||id.trim().equals("")){
		response.sendRedirect("Products.jsp");
		return;
	}
	
	ProductRepository dao=ProductRepository.getInstance();
	
	Product product=dao.getProductById(id);
	if(product==null){
		response.sendRedirect("exceptionNoProductId.jsp");
	}
	
	ArrayList<Product> goodsList=dao.getAllProducts();
	Product goods=new Product();
	for(int i=0;i<goodsList.size();i++){
		goods=goodsList.get(i);
		if(goods.getProductId().equals(id)){
			break;
		}
	}
	
	ArrayList<Product> list=(ArrayList<Product>) session.getAttribute("cartlist");
	if(list==null){
		list=new ArrayList<Product>();
		session.setAttribute("cartlist", list);
	}
	
	int cnt=0;
	Product goodsQnt=new Product();
	for(int i=0;i<list.size();i++){
		goodsQnt=list.get(i);
		if(goodsQnt.getProductId().equals(id)){
			cnt++;
			int orderQuantity=goodsQnt.getQuantity()+1;
			goodsQnt.setQuantity(orderQuantity);
		}
	}
	
	if(cnt==0){
		goods.setQuantity(1);
		list.add(goods);
	}
	
	response.sendRedirect("product.jsp?id="+id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>