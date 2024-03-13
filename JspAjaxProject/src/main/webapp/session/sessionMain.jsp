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
	session.setAttribute("msg", "hello");
	session.setMaxInactiveInterval(10);
%>

<h2>10초안에 눌러주세요!!</h2>
<form action="sessionAction.jsp" method="post">
	<h2>받고싶은 선물은?</h2>
	<input type="radio" value="맥북" name="gift">맥북&nbsp;
	<input type="radio" value="에어팟" name="gift">에어팟&nbsp;
	<input type="radio" value="핸드폰" name="gift">핸드폰&nbsp;
	<input type="radio" value="아이폰" name="gift">아이폰&nbsp;
	<input type="radio" value="상품권" name="gift" checked="checked">상품권&nbsp;
	
	<input type="submit" value="선물선택하기">
	
</form>
</body>
</html>