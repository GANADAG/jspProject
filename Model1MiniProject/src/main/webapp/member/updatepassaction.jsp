<%@page import="data.dao.MemberDao"%>
<%@page import="data.dto.MemberDto"%>
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
	String num=request.getParameter("num");
	String pass=request.getParameter("pass");
	
	MemberDao dao=new MemberDao();
	
	boolean check=dao.isEqualPass(num, pass);
	
	if(check){
		response.sendRedirect("../index.jsp?main=member/updateform.jsp?num="+num);
		//("../index.jsp?main=member/updateform.jsp?num="+num);
	}else{%>
			<script type="text/javascript">
				alert("비밀번호가 맞지않습니다");
				history.back();
			</script>
	<%}
%>
</body>
</html>