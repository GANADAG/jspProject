<%@page import="test.Student"%>
<%@page import="java.util.Vector"%>
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
	<h3>request에 Vector 저장 후 불러오는 연습</h3>
	
	<%
		Vector<Student> list=new Vector<>();
		list.add(new Student("이연주","송파구",99));
		list.add(new Student("이영지","강남구",88));
		list.add(new Student("김하나","마포구",77));
		list.add(new Student("박은주","제주",66));
		list.add(new Student("최경남","부산",99));
		
		//데이타 vetor를 request에 저장
		request.setAttribute("list", list);
		
		//페이지이동2가지 : forword(url주소 안바뀜) redirect(url주소바뀜)
	%>
	
	<jsp:forward page="stuForward_10.jsp"/>
</body>
</html>