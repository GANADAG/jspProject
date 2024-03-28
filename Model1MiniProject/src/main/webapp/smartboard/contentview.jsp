<%@page import="java.text.SimpleDateFormat"%>
<%@page import="data.dto.SmartDto"%>
<%@page import="data.dao.SmartDao"%>
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
<script type="text/javascript">


</script>
</head>
<%
	String num=request.getParameter("num");
	SmartDao dao=new SmartDao();
	SmartDto dto=dao.getData(num);
	dao.updateReadcount(num);
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
%>

<input type="hidden" id="num" value="<%=num%>">


<div style="margin: 50px 100px; width: 500px;">
  <table class="table table-bordered">
     <caption align="top"><b style="font-size: 15pt;"><%=dto.getSubject() %></b></caption>
     <tr>
       <td>
         <b>작성자: <%=dto.getWriter() %></b><br>
         <span class="day"><%=sdf.format(dto.getWriteday()) %></span>
         &nbsp;&nbsp;&nbsp;&nbsp;조회: <%=dto.getReadcount() %>
       </td>
     </tr>
     <tr height="250">
       <td>
         <%=dto.getContent().replace("\n", "<br>") %>
       </td>
     </tr>
     
     <!-- 댓글 -->
     <tr>
       <td>
         <b class="acount">댓글<span>0</span></b>
         <div class="alist" id="alist">
             댓글목록
         </div>
           <div class="aform input-group">
            <input type="text" id="nickname" class="form-control"
            style="width: 80px;" placeholder="닉네임">
            <input type="text" id="content" class="form-control"
            style="width: 300px; margin-left: 10px;" placeholder="댓글메세지">
            
            <button type="button" id="btnasend"
            class="btn btn-info btn-sm" style="margin-left: 10px;">저장</button>
         </div>
         <!-- 수정창 -->
         <div class="aupdateform input-group">
            <input type="hidden" id="idx">
            <input type="text" id="unickname" class="form-control"
            style="width: 80px;" placeholder="닉네임">
            <input type="text" id="ucontent" class="form-control"
            style="width: 300px; margin-left: 10px;" placeholder="댓글메세지">
            
            <button type="button" id="btnaUsend"
            class="btn btn-warning btn-sm" style="margin-left: 10px;">수정</button>
         </div>
         
         
       </td>
     </tr>
     
     <tr>
       <td align="center">
         <button type="button" class="btn btn-outline-info btn-sm"
         onclick="location.href=''"><i class="bi bi-pencil"></i>글쓰기</button>
         <button type="button" class="btn btn-outline-success btn-sm"
         onclick="location.href=''"><i class="bi bi-list-check"></i>목록</button>
         <button type="button" class="btn btn-outline-primary btn-sm"
         onclick="location.href=''"><i class="bi bi-pencil-square"></i>수정</button>
         <button type="button" class="btn btn-outline-danger btn-sm"
         onclick="location.href=''"><i class="bi bi-trash"></i>삭제</button>
       </td>
     </tr>
  </table>
</div>
<body>
<!--	상세페이지 만들기 
	작성자 글제목 날짜 내용 등등 ..조회수 증가도 포함
	맨아래는 목록 글쓰기 수정 삭제버튼 만들기 -->
	
</div>
</body>
</html>