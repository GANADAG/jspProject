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
	
	String grade=request.getParameter("grade");
	String [] lang=request.getParameterValues("lang");//다중선택 []
	String like=request.getParameter("like");
	String height=request.getParameter("height");
	String weight=request.getParameter("weight");
	String ipsaday=request.getParameter("ipsaday");
	
	%>
	
	<h3 class="alert alert-success">결과값 출력</h3>
	학교:<b><%=grade %></b><br>
	언어:<br>
	<%
		if(lang==null)
		{%>
			<font color="green">아무언어도 못함<br></font>
	<%}else
	{
		for(int i=0;i<lang.length;i++)
		{%>
			&nbsp;&nbsp;<b><%=lang[i] %></b><br>
		<%}
	}
	%>
	프로젝트:<%=like %><br>
	몸무게:<%=height %><br>
	키:<%=weight %><br>
	날짜:<%=ipsaday %><br>
	
	
</body>
</html>