<%@page import="java.text.SimpleDateFormat"%>
<%@page import="team.model.TeamDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="team.model.TeamDao"%>
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
		//db목록가져오기
		TeamDao dao=new TeamDao();
		ArrayList<TeamDto>list=dao.getAllTeams();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
	
	%>
</body>
	<div style="margin:30px 50px;">
		<button type="button" class="btn btn-success"
		onclick="location.href='addForm.jsp'">팀원추가</button>
		
		<br><br>
		<table class="table table-bordered" style="width:900px;">
			<tr class="table-primary">
			<th width="50">번호</th>
			<th width="100">이름</th>
			<th width="60">운전면허</th>
			<th width="120">주소</th>
			<th width="150">작성일</th>
			<th width="80">편집</th>
			</tr>
			
			<%
				for(int i=0;i<list.size();i++)
				{
					TeamDto dto=list.get(i);
					%>	
					
					<tr>
						<td><%=i+1 %></td>
						<td><%=dto.getName() %></td>
						<td><%=dto.getDriver() %></td>
						<td><%=dto.getAddr() %></td>
						<td><%=sdf.format(dto.getWriteday()) %></td>
						<td>
							<button type="button" class="btn btn-primary btn-sm"
							onclick="location.href='updateForm.jsp?num=<%=dto.getNum()%>'">수정</button>
							<button type="button" class="btn btn-primary btn-sm"
							onclick="location.href='teamDelete.jsp?num=<%=dto.getNum()%>'">삭제</button>
						</td>
						
					</tr>
				<%}
			%>
		</table>
	
	</div>
</html>