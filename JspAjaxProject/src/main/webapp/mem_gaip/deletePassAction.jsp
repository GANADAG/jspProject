<%@page import="mem_gaip.model.MemgaipDao"%>
<%@page import="simpleboard.model.SimpleBoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Diphylleia&family=Dongle&family=Noto+Sans+KR:wght@100..900&family=Orbit&family=Stylish&display=swap"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>

<title>Insert title here</title>
</head>
<body>
	<%
	//num,pass
	String m_num = request.getParameter("m_num");
	String m_pass = request.getParameter("m_pass");

	//dao
	MemgaipDao dao = new MemgaipDao();

	//비번체크메서드
	boolean check = dao.isEqualPass(m_num, m_pass);

	//true..맞으면 삭제 후 목록
	//false.틀리면 경고창 후 back
	if (check) {
		
		dao.deleteMemgaip(m_num);
		
		response.sendRedirect("memList.jsp");
	} else {
	%>
	<script type="text/javascript">
		alert("비밀번호가 맞지않습니다");
		history.back();
	</script>
	<%
	}
	%>
</body>
</html>