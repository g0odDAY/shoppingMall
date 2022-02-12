<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error</title>
</head>
<body>
	<%-- <div align="center">
	<div><h1>${massage }</h1></div>
</div> --%>
	<div class="container-fluid pt-4 px-4">
		<div
			class="row vh-100 bg-light rounded align-items-center justify-content-center mx-0">
			<div class="col-md-6 text-center p-4">
				<i class="bi bi-exclamation-triangle display-1 text-primary"></i>
				<h1 class="display-1 fw-bold">오류!!</h1>
				<h1 class="mb-4">오류가 발생했습니다.</h1>
				<p class="mb-4">죄송합니다 다시 확인 바랍니다.</p>
				<a class="btn btn-primary rounded-pill py-3 px-5" href="main.do">Go Back To Home</a>
			</div>
		</div>
	</div>
</body>
</html>