<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="prodAdd.do" method="post" enctype="multipart/form-data">
		<div class="form-group">
			<label for="prodName">상품명</label> <input type="text"
				class="form-control" id="prodName" Name="prodName">
		</div>
		<div class="form-group">
			<label for="prodDis">상품설명</label>
			<textarea class="form-control" id="prodDis" name="prodDis" rows="3"></textarea>
		</div>
		<div class="form-group">
			<label for="prodPrice">상품가격</label> <input type="text"
				class="form-control" id="prodPrice" Name="prodPrice">
		</div>
		<div class="form-group">
			<label for="prodFile">상품이미지</label> <input type="file"
				class="form-control-file" id="prodFile" name="prodFile">
		</div>
		<button type="submit">전송</button>
	</form>
</body>
</html>