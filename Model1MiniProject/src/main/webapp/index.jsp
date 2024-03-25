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
<style type="text/css">
	div.layout{
		border: 0px solid gray;
		position: absolute;
	}
	
	div.title{
		width: 100%;
		height:80px;
		line-height:80px;
		font-size:40pt;
		font-family:'dongle';
		text-align: center;
	}
	
	div.menu{
		width: 100%;
		height: 80px;
		line-height: 80px;
		font-size: 50px;
		font-family:'dongle';
		text-align: center;
		top: 90px;
	}
	
	div.info{
		width: 200px;
		height: 180px;
		line-height: 10px;
		font-size: 15pt;
		font-family:'dongle';
		left: 50px;
		top: 300px;
		border: 3px groove yellow;
		border-radius: 30px;
		padding: 20px 20px;
	}
	
	div.main{
		width: 1200px;
		height: 700px;
		font-size: 15pt;
		font-family:'dongle';
		left:300px;
		top: 200px;
	}
</style>
</head>
<%
	//프로젝트 경로
	//String root=request.getContextPath();

	String mainPage="layout/main.jsp";//기본페이지
	
	//url을 통해서 main값을 읽어서 메인페이지에 출력
	if(request.getParameter("main")!=null)
	{
		mainPage=request.getParameter("main");
	}
%>
<body>
<%--<%=root %>  --%>
<div class="layout title">
	<jsp:include page="layout/title.jsp"/>
</div>
<div class="layout menu">
	<jsp:include page="layout/menu.jsp"/>
</div>
<div class="layout info">
	<jsp:include page="layout/info.jsp"/>
</div>
<div class="layout main">
	<jsp:include page="<%=mainPage %>"/>
</div>
</body>
</html>