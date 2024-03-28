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
	String email=request.getParameter("email1")+"@"+request.getParameter("email2");
	String id=request.getParameter("id");
	String name=request.getParameter("name");
%>
<jsp:useBean id="dao" class="data.dao.SemiiDao"/>
<jsp:useBean id="dto" class="data.dto.SemiiDto"/>
<jsp:setProperty property="*" name="dto"/>
<%
	dto.setEmail(email);
	dao.insertMember(dto);

	
%>
</body>
</html>