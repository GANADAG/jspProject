<%@page import="intro.model.IntroDto"%>
<%@page import="java.util.Vector"%>
<%@page import="intro.model.IntroDao"%>
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
		IntroDao dao=new IntroDao();
		Vector<IntroDto> introList=dao.getAllDatas();
		
	%>
</body>
	<div>
	<button type="button" class="btn btn-info"
	onclick="location.href='addForm.jsp'">입력폼</button>
	
	<hr>
	<table class="table table-bordered" style="width:1000px;">
		<caption align="top"><b>info 전체목록</b></caption>
		<tr class="table-success">
			<th wigth="80" >번호</th>
			<th wigth="120">이름</th>
			<th wigth="350">생년월일</th>
			<th wigth="80">거주지역</th>
			<th wigth="80">취미</th>
			<th wigth="150">성격</th>
		</tr>
		<%
		
		%>
	</table>
	</div>
</html>