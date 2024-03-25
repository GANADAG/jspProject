<%@page import="data.dao.MemberDao"%>
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
<%
	//프로젝트 경로 
	String root=request.getContextPath();
%>
<body>
	<a href="<%=root%>" style="color: black; text-decoration: none;">
	<img alt="" src="<%=root%>/image/logoImg/logo.png">
		JSP & JQuery 미니프로젝트
	</a>
	
	<div style="float: right; padding-right: 50px;">
		<%
			//로그인 세션얻기
			String loginok=(String)session.getAttribute("loginok");
			
			//아이디얻기
			String myid=(String)session.getAttribute("myid");
			
			MemberDao dao=new MemberDao();
			String name=dao.getName(myid);
			
			if(loginok==null)
			{%>
				<button type="button" class="btn btn-success"
				style="width: 100px;"
				onclick="location.href='index.jsp?main=login/loginform.jsp'">Login</button>
			<%}else{%>
					<b><%=name %>님 로그인상태..</b>
					<button type="button" class="btn btn-danger"
					style="width: 100px;"
					onclick="location.href='login/logoutaction.jsp'">Logout</button>
			<%}
			
		%>
	</div>
</body>
</html>