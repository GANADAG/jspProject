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
	<h2 align="center">점심메뉴 정하기 !!!</h2>
	<form action="quizWrite_03.jsp" method="post">
		<table class="table table-bordered" style="width:600px;">
			<tr>
				<th width="120" class="table-success">사원명</th>
				<td>
					<input type="text" name="name" placeholder="이름" required="required"
		 			style="width:100px">
				</td>
			</tr>
			
			<tr>
				<th width="120" class="table-info">입사일자</th>
				<td>
					<input type="date" name="date" placeholder="입사일자" required="required"
		 			style="width:150px">
				</td>
			</tr>
				
			<tr>
		 		<th width="120"  class="table-success">점심메뉴선택</th>
		 		<td>
		 			<input type="radio" name="radio" value="../image/Food/1.jpg">
		 			<img src="../image/Food/1.jpg" alt="Food Image"  wigth:"50" height="50"  >
		 			<input type="radio" name="radio" value="../image/Food/2.jpg">
		 			<img src="../image/Food/2.jpg" alt="Food Image"  wigth:"50" height="50"  >
		 			<input type="radio" name="radio" value="../image/Food/3.jpg" >
		 			<img src="../image/Food/3.jpg" alt="Food Image"  wigth:"50" height="50"  >
		 			<input type="radio" name="radio" value="../image/Food/4.jpg">
		 			<img src="../image/Food/4.jpg" alt="Food Image"  wigth:"50" height="50"  >
		 		</td>
		 	</tr>
		 	
		 	<tr>
			<th width="120" class="table-info">건의하는메뉴</th>
			<td>
				<select name="food" class="form-control" style="width:100px;"
				multiple="multiple">
					<option value="마라탕">마라탕</option>
					<option value="쌀국수">쌀국수</option>
					<option value="설렁탕">설렁탕</option>
					<option value="분식">분식</option>
				</select>
			</td>
		</tr>
		 	
		 	<tr>
			<td colspan="2" align="center">
			<input type="submit" value="전송">
			<input type="reset" value="초기화">
			</td>
		</tr>
		</table>
	</form>
</body>
</html>