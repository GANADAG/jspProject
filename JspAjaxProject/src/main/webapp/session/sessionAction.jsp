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
메인 작성 후 처리부분
<%
/////22
	request.setCharacterEncoding("utf-8");

//세션이 있는지 확인, 확인 후 없으면 선물 꽝
	String msg=(String)session.getAttribute("msg");
	String gift=request.getParameter("gift");
	
	if(msg==null || msg.equals("hello"))
	{%>
		<h3 style="color: red;">시간초과로 꽝입니다</h3>
	<%}else
	{%>
		<h3 style="color: red;">축하합니다<%=gift %>선물당첨!!</h3>	
	<%}
%>

<a href="sessionMain.jsp">다시선택</a>
</body>
</html>