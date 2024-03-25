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
	//세션값 얻기
	String saveok=(String)session.getAttribute("saveok");
	String myid="";
	if(saveok!=null)
	{
		myid=(String)session.getAttribute("myid");
	}
%>

<body>
	<div style="margin: 100px 200px;'">
		<form action="login/loginaction.jsp" method="post">
			<table class="table table-bordered" style="width: 200px;"
			>
				<caption align="top">세션로그인</caption>
				<tr>
					<td>
						<input type="text" name="id" class="form-control"
						required="required" placeholder="아이디입력" style="width: 200px;"
						value="<%=myid%>">
					</td>
				</tr>	
				
				<tr>	
					<td>
						<input type="password" name="pass" class="form-control"
						required="required" placeholder="비밀번호입력" style="width: 200px;">
					</td>
				</tr>
				<tr>
					<td>
						<input type="checkbox" name="cbsave"
						<%=saveok==null?"":"checked" %>>&nbsp;아이디저장
					</td>
				</tr>
				<tr>
					<td>
						<button type="submit" class="btn btn-success btn-lg"
						style="width: 200px;">로그인</button>
					</td>
				</tr>
			</table>
		
		</form>
	
	</div>
</body>
</html>