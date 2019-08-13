<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.Calendar"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>현재시각</title>
<%!
	Calendar c=Calendar.getInstance();
int hour=c.get(Calendar.HOUR_OF_DAY);
int minute=c.get(Calendar.MINUTE);
int second=c.get(Calendar.SECOND);

%>
</head>
<body>
현재 시간은 <%=hour %>시 <%=minute %>분 <%=second %>초 입니다.
</body>
</html>