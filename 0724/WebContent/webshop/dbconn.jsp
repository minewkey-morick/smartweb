<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	Connection conn=null;
	
	try{
	String url="jdbc:mysql://localhost:3306/smartweb";
	String user="root";
	String password="1111";
	
	Class.forName("com.mysql.jdbc.Driver");
	conn=DriverManager.getConnection(url, user, password);
	}catch(SQLException ex){
		out.println("데이터베이스 연결에 실패했습니다.<br>");
		out.println("SQLException: "+ex.getMessage());
	}
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