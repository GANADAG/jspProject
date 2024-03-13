<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@page import="quizshop.model.QuizShopDto"%>
<%@page import="quizshop.model.QuizShopDao"%>
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
	href="https://fonts.googleapis.com/css2?family=Dongle&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100..900&family=Single+Day&family=Stylish&display=swap"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
</head>
<%
QuizShopDao dao=new QuizShopDao();
List<QuizShopDto> list=dao.selectShop();
SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
%>

<body>
	<div style="margin: 50px 50px; width: 700px;">
		<h3 class="alert alert-danger" align="center">상품</h3>
		<br>
		<button type="button" class="btn btn-danger"
			onclick="location.href='addform.jsp'">상품추가버튼</button>
		<br>
		<table class="table table-bordered" >
			<tr class="table-danger" align="center">
				<th width="60">번호</th>
				<th width="200">상품명</th>
				<th width="180">가격</th>
				<th width="160">입고일</th>
				<th width="160">등록일</th>
			</tr>
			<%
      for(int i=0; i<list.size(); i++)
      {
         QuizShopDto dto=list.get(i);
         %>
			<tr>
				<td align="center"><%=i+1 %></td>
				<td onclick="location.href='detailpage.jsp?num=<%=dto.getNum() %>'"><%=dto.getSang_name()%></td>
				<td><%=dto.getPrice()%></td>
				<td><%=dto.getIpgoday()%></td>
				<td><%=sdf.format(dto.getWriteday()) %></td>
			</tr>
			<%}
      
      %>
		</table>

	</div>
</body>
</html>