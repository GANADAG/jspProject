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


	request.setCharacterEncoding("utf-8");

	String name=request.getParameter("name");
	String date=request.getParameter("date");
	String radio=request.getParameter("radio");
	String food=request.getParameter("food");
%>

	<h3 class="alert alert-danger">결과값출력</h3>
	 	 이름:<%=name %><br>
		 입사일자:<%=date %><br>
		 점심메뉴선택:<img src="<%=radio %>" width="50"><br>
		 건의하는메뉴:<%=food %>
		
</body>
</html>