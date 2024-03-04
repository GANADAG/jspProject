<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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

<style>
	.main.img:hover{
		cursor:pointer;
		width:200px;
		height:260px;
		border:5px inset pink;
	}
</style>
</head>
<body>
	<%
	List<String> list = new ArrayList();
	list.add("yellow");
	list.add("gray");
	list.add("magenta");
	list.add("orange");
	list.add("blue");

	for (String a : list) {
	%>
	<div style="width: 100px;height:50px;background-color:<%=a%>"><%=a%></div>
	<%
	}
	%>

	<h3>이미지 배열로 출력</h3>

	<%
	String[] imgArr = { "1.jpg", "10.jpg", "11.jpg", "12.jpg", "5.jpg", "6.jpg", "7.jpg", "8.jpg", "9.jpg" };
	int n = 0;
	%>



	<table>
		<%
		for (int i = 0; i < 3; i++) {
		%>
		<tr height="100">
			<%
			for (int j = 0; j < 3; j++) {
			%>

			<td><img alt="" src="../image/Food/<%=imgArr[n]%>" wigth="80"
				height="80"></td>

			<%
			n++;
			}
			%>
		</tr>
		<%
		}
		%>
	</table>

	<h2>
		문제 : 연예인사진 20개 4행5열로 출력하기
		<table>
			<%
			int a = 0;

			for (int row = 0; row <= 4; row++)//4행
			{
			%>
			<tr>
				<%
				for (int j = 0; j < 5; j++) {
					a++;
				%>
				<td><img alt="" src="../image/연예인사진/<%=a%>.jpg" wigth="80"
					height="80"></td>

				<%
				}
				%>
			</tr>

			<%
			}
			%>
		</table>
</body>
</html>