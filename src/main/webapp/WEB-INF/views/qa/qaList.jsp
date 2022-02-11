<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객문의</title>
</head>
<body>
	<div class="bg-light rounded h-100 p-4" align="center">
		<h1 class="mb-4">QnA</h1>
		<table class="table table-hover" style="width:1000px;">
			<thead class="text-center mb-0">
				<tr>
					<th scope="col">문의번호</th>
					<th scope="col">작성자</th>
					<th scope="col">문의명</th>
					<th scope="col">작성일자</th>
				</tr>
			</thead>
			<tbody class="text-center mb-0">
				<c:forEach items="${qa }" var="qa">
					<tr onclick="qaSelect(${qa.qaNumber})">
						<th scope="row">${qa.qaNumber }</th>
						<td scope="col">${qa.qaWriter }</td>
						<td scope="col">${qa.qaTitle }</td>
						<td scope="col">${qa.qaDate }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table><br>
		<div align="right" style="width:1000px;">
			<input class="btn btn-primary btn-sm" type="button" value="문의작성" onclick="location.href='qaForm.do'">
			<form id="frm" action="qaSelect.do" method="post">
				<input type="hidden" id="qaNumber" name="qaNumber">
			</form>
		</div>
	</div>
</body>
<script type="text/javascript">
		function qaSelect(id){
			frm.qaNumber.value=id;
			frm.submit();
		}
</script>
</html>