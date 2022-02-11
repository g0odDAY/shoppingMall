<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="bg-light rounded h-100 p-4" align="center">
		<h1 class="mb-4">공 지 사 항</h1>
		<table class="table table-hover" style="width:1000px;">
			<thead class="text-center mb-0">
				<tr>
					<th scope="col">글번호</th>
					<th scope="col">글제목</th>
					<th scope="col">작성자</th>
					<th scope="col">작성일자</th>
					<th scope="col">조회수</th>
				</tr>
			</thead>
			<tbody class="text-center mb-0">
				<c:forEach items="${notices }" var="notice">
					<tr onclick="noticeSelect(${notice.noticeId})">
						<td scope="col">${notice.noticeId }</td>
						<td scope="col" align="left">${notice.noticeTitle }</td>
						<td scope="col">${notice.noticeWriter }</td>
						<td scope="col">${notice.noticeDate }</td>
						<td scope="col">${notice.noticeHit }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<br>
		<c:if test="${author == 'ADMIN' }">
			<div align="right" style="width:1000px;">
				<input class="btn btn-primary btn-sm" type="button" value="공지등록"
					onclick="location.href='noticeInsertForm.do'">
			</div>
		</c:if>
	</div>
	<div>
		<form id="frm" action="noticeSelect.do" method="post">
			<input type="hidden" id="noticeId" name="noticeId">
		</form>
	</div>

	<script type="text/javascript">
		function noticeSelect(id) { 
			frm.noticeId.value = id;
			frm.submit();
		}
	</script>
</body>
</html>