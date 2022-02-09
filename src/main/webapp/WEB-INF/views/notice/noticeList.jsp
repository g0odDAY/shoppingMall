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
	<div class="card-body" align="center">
		<div>
			<h2>공지사항</h2>
		</div>
		<div>
			<table border="0" style="width: 800px">
				<thead class="text-center mb-0">
					<tr>
						<%-- <c:if test="${'' }"> --%>
						<th>
							<button class="btn btn-primary btn-sm" type="button" onclick="location.href='noticeInsertForm.do'">공지등록</button>
						</th>
						<%-- </c:if> --%>
					</tr>
					<tr>
						<th width="100">글번호</th>
						<th width="300" align="left">글제목</th>
						<th width="150">작성자</th>
						<th width="150">작성일자</th>
						<th width="100">조회수</th>
					</tr>
				</thead>
				<tbody class="text-center mb-0">
					<c:forEach items="${notices }" var="notice">
						<tr onclick="noticeSelect(${notice.noticeId})">
							<td>${notice.noticeId }</td>
							<td align="left">${notice.noticeTitle }</td>
							<td>${notice.noticeWriter }</td>
							<td>${notice.noticeDate }</td>
							<td>${notice.noticeHit }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<br>

		<div>
			<form id="frm" action="noticeSelect.do" method="post">
				<input type="hidden" id="noticeId" name="noticeId">
			</form>
		</div>

	</div>
	<script type="text/javascript">
		function noticeSelect(id) { 
			frm.noticeId.value = id;
			frm.submit();
		}
	</script>
</body>
</html>