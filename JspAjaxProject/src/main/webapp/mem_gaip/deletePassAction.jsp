<%@page import="mem_gaip.model.MemgaipDao"%>
<%@page import="simpleboard.model.SimpleBoardDao"%>
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
	//num,pass
	String num=request.getParameter("m_num");
	String pass=request.getParameter("m_pass");
	
	//dao
	MemgaipDao dao=new MemgaipDao();
	
	//비번체크메서드
	boolean check=dao.isPassCheck(num, pass);

	 //true면 삭제 후 목록
	 //false면 경고창 후 back
	 if(check)
	 {
		 dao.deleteMemgaip(num);
		// response.sendRedirect("addform.jsp");
		 %>
		 <script type="text/javascript">
		 	alert("삭제됨");
		 	location.href='memlist.jsp';
		 </script>
	 <%}else{%>
			 <script type="text/javascript">
			 alert("비밀번호가 맞지않습니다");
			 history.back();
			 </script>
	 <%}
	
	
%>
</body>
</html>