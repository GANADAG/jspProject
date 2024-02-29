<%@page import="info.model.InfoDao"%>
<%@page import="info.model.InfoDto"%>
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
		request.setCharacterEncoding("utf-8");//한글엔코딩
		
		//데이타 읽어서 dto담기
		String num=request.getParameter("num");
		String name=request.getParameter("name");
		String addr=request.getParameter("addr");
		
		InfoDto dto=new InfoDto();
		dto.setNum(num);
		dto.setName(name);
		dto.setAddr(addr);
		
		//db저장
		InfoDao dao=new InfoDao();
		dao.infoUpdate(dto);
		
		//목록
		response.sendRedirect("list.jsp");
	%>
</body>
</html>