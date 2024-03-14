<%@page import="java.text.SimpleDateFormat"%>
<%@page import="uploadboard.data.UploadBoardDto"%>
<%@page import="uploadboard.data.UploadBoardDao"%>
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
<%
	String num=request.getParameter("num");
	UploadBoardDao dao=new UploadBoardDao();
	//데이타 가져오기
	UploadBoardDto dto=dao.getData(num);
	//조회수증가
	dao.updateReadCount(num);
	
	//출력날짜형식
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
%>
<body>
<div style="margin: 100px 100px;"></div>
	<table class="table table-condensed" style="width: 650px;">
		<tr>
			<td style="width: 500px;">
				<b><%=dto.getSubject() %></b>
			</td>
			<td style="color: gray; font-size: 10pt;">
			<%=sdf.format(dto.getWriteday()) %>
			</td>
		</tr>
		
		<tr>
			<td colspan="2">
			<span style="color: gray; font-size: 15pt;">
			<%=dto.getWriter() %>
			</span>
				<br><br>
				<%=dto.getContent().replace("\n","<br>") %>
				
				<br><br>
				<!-- 클릭시 원래 이미지 크기로 -->
				<a href="../save/<%=dto.getImgname()%>">
				<img alt="" src="../save/<%=dto.getImgname()%>" style="max-width: 200px;"></a>
				
				<br><br>
				<b style="color: gray; font-size: 10pt;">조회: <%=dto.getReadcount() %></b>
			</td>
		</tr>
		
		<div>
			<tr>
              <td>
                <input type="button" value="글쓰기" class="btn btn-outline-warning"
                onclick="location.href='addform.jsp'">
                <input type="button" value="목록" class="btn btn-outline-info"
                onclick="location.href='boardlist.jsp'">
                <input type="button" value="수정" class="btn btn-outline-danger"
                onclick="location.href='updateform.jsp?num=<%=dto.getNum()%>'">
                <input type="button" value="삭제" class="btn btn-outline-success"
                onclick="location.href='deleteform.jsp?num=<%=dto.getNum()%>'">
              </td>
            </tr>
		
		</div>
	
	</table>
           
</body>
</html>