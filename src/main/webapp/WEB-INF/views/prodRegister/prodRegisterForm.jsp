<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>

	
	<div class="bg-light rounded h-100 p-4" align="center">
		<form id="frm" action="main.do" method="post">
			<div class="mb-4">
				<h1>상 품 등 록</h1>
			</div>
			<table class="table" style="width:1000px;">
			<thead class="text-center mb-0">
			<tr>
				<th class="form-floating">상품명</th> 
				<td><input  class="form-control" type="text" class="form-control" id="prodName" Name="prodName"></td>
			</tr>
			<tr>
				<th class="form-floating" style="vertical-align: top;">상품설명</th>
				<td><textarea class="form-control" rows="3" id="prodDis" name="prodDis" rows="3"></textarea></td>
			</tr>
			<tr>
				<th class="form-floating">상품가격</th> 
				<td><input  class="form-control" type="text" class="form-control" id="prodPrice" Name="prodPrice"></td>
			</tr>
			</thead>
			</table>
			<div align="right" style="width:1000px;">
			<input class="btn btn-primary btn-sm" type="submit" value="등록">
			</div>
		</form>
	</div>

</body>
</html>