<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Dongle&family=Gaegu&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100..900&family=Noto+Serif+KR&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
<style type="text/css">
  body *{
    font-family: 'dongle';
    font-size:1.2em;
  }
</style>
</head>
<%
  //num을 읽어서 form에 hidden으로 넣는다
  String m_num=request.getParameter("m_num");
%>
<body>
  <div style="margin: 200px 200px; width: 300px; ">
     <form action="deletePassAction.jsp" method="post">
       <input type="hidden" name="m_num" value="<%=m_num%>">
        <div class="input-group">
          <h5 style="width: 100px;">비밀번호</h5>
          <input type="password" class="form-control" required="required"
          name="m_pass" style="width: 150px;">
        </div>
        <br><br>
        <button type="submit" class="btn btn-danger" 
        style="margin-left: 100px;">삭제 비밀번호 확인</button>
     </form>
  </div>
</body>
</html>