<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Diphylleia&family=Dongle&family=Noto+Sans+KR:wght@100..900&family=Orbit&family=Stylish&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
    
<title>Insert title here</title>
</head>
<body>
	<%
	String name=request.getParameter("name");
	String addr=request.getParameter("addr");
	String celeb1=request.getParameter("celeb");
	
	%>
	
	<h3>전달받은 이름: <%=name %></h3>
	<h3>전달받은 주소: <%=addr %></h3>
	<br><br>
	<img alt=""src="<%=celeb1%>">
	
</body>
</html>