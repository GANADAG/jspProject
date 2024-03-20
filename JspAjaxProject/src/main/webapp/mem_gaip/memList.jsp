<%@page import="mem_gaip.model.MemgaipDto"%>
<%@page import="java.util.List"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="mem_gaip.model.MemgaipDao"%>
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
img {
	width: 50px;
	height: 50px;
	border: 1px solid gray;
}
</style>
</head>
<%
	MemgaipDao dao=new MemgaipDao();
	List<MemgaipDto> list=dao.getAlldatas();
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
%>

<body>
	<div style="margin: 50px 100px; width: 1000px;">
		<b>총 <%=list.size() %>명의 회원이 가입되었습니다 </b> <br>
		<button type="button" class="btn btn-warning"
		onclick="location.href='addForm.jsp'" style="float: right; margin-right: 50px">회원가입</button>
		
		<table class="table table-bordered">
					
			<caption align="top">
				<b>전체회원명단</b>
			</caption>
			<tr class="table-success">
				<th width="80">번호</th>
				<th width="100">아이디</th>
				<th width="100">회원명</th>
				<th width="150">핸드폰</th>
				<th width="150">가입일</th>
				<th width="100">편집</th>
			</tr>

			<%
			int i=1;
				for(MemgaipDto dto:list)
				{%>
			<tr>
				<td align="center" valign="middle"><%=i++ %></td>
				<td align="center" valign="middle"><%=dto.getM_id() %></td>
				<td align="center">
					<%
					if(dto.getM_photo()==null)
					{%> <img alt="" src="../image/연예인사진/noimage.jpg"
					class="rounded-circle"> <%}else{
						%> <img alt="" src="../upload/<%=dto.getM_photo() %>"
					class="rounded-circle"> <br> <%}
				%> 
				
				<br> 
				
				<b><%=dto.getM_name() %></b>

				</td>
				<td align="center" valign="middle"><%=dto.getM_hp() %></td>
				<td align="center" valign="middle"><%=sdf.format(dto.getGaipday()) %></td>
				<td align="center" valign="middle">
					<button type="button" class="btn btn-success"
					onclick="location.href='updatePassForm.jsp?m_num=<%=dto.getM_num()%>'">수정</button>
					<button type="button" class="btn btn-danger"
					onclick="location.href='deletepassForm.jsp?m_num=<%=dto.getM_num()%>'">삭제</button>
				</td>
			</tr>
			<%}
		%>
		</table>
	</div>

</body>
</html>