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
	String shopnum=request.getParameter("shopnum");
	String loginok=(String)session.getAttribute("loginok");
	String myid=(String)session.getAttribute("myid");
%>
<body>
	 <h3 class="alert alert-info">상품확인</h3>
  
   <div style="float: left; margin-top: 50px; width: 300px; height: 300px;">
   <table class="table table-bordered">
   <form action="#" method="post" name="frm">
      <input type="hidden" name="num" value="<%=%>">
          <caption align="top"><b>상품정보</b></caption>
            <tr>
              <th width="100" class="table-info">상품명</th>
              <td>
                <input type="text" name="sang_name" 
                 class="form-control" style="width: 200px;" value=" <%=%>">
              </td>
            </tr>
            <tr>
              <th width="100" class="table-info">가격</th>
              <td>
                <input type="text" name="sang_name" 
                 class="form-control" style="width: 200px;" value="<%=%>">
              </td>
            </tr>
            <tr>
              <th width="100" class="table-info">입고날짜</th>
              <td>
              <input type="date" name="sang_name" 
                 class="form-control" style="width: 200px;" value=<%=%>>
              </td>
            </tr>
            <tr>
              <td colspan="2" align="center">
                <input type="submit" value="수정" class="btn btn-outline-warning">
                <input type="button" value="삭제" class="btn btn-outline-danger">
                <input type="button" value="목록" class="btn btn-outline-warning"
                onclick="location.href='shoplist.jsp'">
              </td>
            </tr>
           </table>
     </table>
   </div>
</body>
</html>