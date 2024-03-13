<%@page import="java.sql.Date"%>
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
		//세션 저장하는법
		session.setAttribute("msg", "happy day!!");
		session.setMaxInactiveInterval(60);//60초 유지시간지정 ..설정안할시 30분이 기본
	%>
	
	<h3>세션값 얻기</h3>
	세션값: <%=session.getAttribute("msg") %><br>
	세션유지시간:<%=session.getMaxInactiveInterval() %>초<br>
	세션생성시간: <%=session.getCreationTime() %><br>
	세션생성시간:<%=new Date(session.getCreationTime()) %>
</body>
</html>