<%@page import="java.util.List"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="uploadboard.data.UploadBoardDto"%>
<%@page import="uploadboard.data.UploadBoardDao"%>
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
<%
UploadBoardDao dao = new UploadBoardDao();
List<UploadBoardDto> list = dao.getAllDatas();
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
%>
<body>
	<div>
		<table class="table table-condensed" style="width: 650px;">
			<tr>
				<td><input type="button" value="게시글추가"
					class="btn btn-outline-warning"
					onclick="location.href='addform.jsp'"></td>
			</tr>
			<br>
			<br>
			<h5 class="alert alert-info">
				총
				<%=list.size()%>개의 게시글이 있습니다
			</h5>

			<tr>
				<th width="80">번호</th>
				<th width="380">제목</th>
				<th width="160">작성자</th>
				<th width="250">작성일</th>
				<th width="250">조회</th>
			</tr>

			<%
				for(int i=0;i<list.size();i++)
				{
					//1번열에 출력할 번호
					int no=list.size()-i;
					
					//i번째 dto얻기
					UploadBoardDto dto=list.get(i);
					%>
			<tr>
				<td align="center"><%=no %></td>
				<td><img alt=""
						src="../save/<%=dto.getImgname()%>" style="width: 30px;"> <%=dto.getSubject() %>
				</td>
				<td><%=dto.getWriter() %></td>
				<td><%=sdf.format(dto.getWriteday()) %></td>
				<td><%=dto.getReadcount() %></td>


			</tr>
			<%}
			%>

			</div>


		</table>
</body>
</html>