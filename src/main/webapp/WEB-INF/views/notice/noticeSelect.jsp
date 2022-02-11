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
	<script type="text/javascript">
		function CallUpdate(str) {
			if (str == "U") {
				window.alert('공지를 수정하였습니다.');
				frm.action = "noticeUpdate.do";
			} else if (str == "D") {
				window.alert('공지를 삭제하였습니다.');
				frm.action = "noticeDeleteForm.do";
			}
			frm.submit();
		}
	</script>
		<div class="bg-light rounded h-100 p-4" align="center">
			<form id="frm" method="post">
				<div class="mb-4">
				<h1>공 지 사 항</h1>
				<c:if test="${author == 'ADMIN' }">
					<table class="table" style="width:1000px;">
						<thead class="text-center mb-0">
							<tr>
								<th class="form-floating">제 목</th>
								<td><input class="form-control" id="noticeTitle" name="noticeTitle" value="${notice.noticeTitle }"></td>
							</tr>
							<tr>
								<th class="form-floating">글번호</th>
								<td><input class="form-control" id="noticeId" name="noticeId" value="${notice.noticeId }" readonly="readonly"></td>
							</tr>
							<tr>
								<th class="form-floating">작성자</th>
								<td><input class="form-control" id="noticeWriter" name="noticeWriter" value="${notice.noticeWriter }" readonly="readonly"></td>
							</tr>
							<tr>
								<th class="form-floating">작성일자</th>
								<td><input class="form-control" id="noticeDate" name="noticeDate" value="${notice.noticeDate }" readonly="readonly"></td>
							</tr>
							<tr>
								<th class="form-floating">조회수</th>
								<td><input class="form-control" id="noticeHit" name="noticeHit" value="${notice.noticeHit }" readonly="readonly"></td>
							</tr>
							<tr>
								<th class="form-floating" style="vertical-align: top;">내 용</th>
								<td><textarea class="form-control" rows="10" id="noticeSubject" name="noticeSubject">${notice.noticeSubject }</textarea></td>
							</tr>
							</thead>
						</table>
						<br> 
						<div align="right" style="width:1000px;">
							<input class="btn btn-primary btn-sm" type="button" onclick="CallUpdate('U')" value="수정">
							<input class="btn btn-primary btn-sm" type="button" onclick="CallUpdate('D')" value="삭제">
							<input class="btn btn-primary btn-sm" type="button" onclick="location.href='noticeList.do'" value="공지목록">
						</div>
						</c:if>
						<c:if test="${author != 'ADMIN' }">
						<table class="table" style="width:1000px;">
						<thead class="text-center mb-0">
							<tr>
								<th class="form-floating">제 목</th>
								<td class="blockquote" align="left">${notice.noticeTitle }</td>
							</tr>
							<tr>
								<th class="form-floating">글번호</th>
								<td class="blockquote" align="left">${notice.noticeId }</td>
							</tr>

							<tr>
								<th class="form-floating">작성자</th>
								<td class="blockquote" align="left">${notice.noticeWriter }</td>
							</tr>
							<tr>
								<th class="form-floating">작성일자</th>
								<td class="blockquote" align="left">${notice.noticeDate }</td>
							</tr>
							<tr>
								<th class="form-floating">조회수</th>
								<td class="blockquote" align="left">${notice.noticeHit }</td>
							</tr>
							<tr>
								<th class="form-floating" style="vertical-align: top;">내 용</th>
								<td class="blockquote" height="300" align="left" style="vertical-align:top; white-space:pre;">${notice.noticeSubject }</td>
							</tr>
							</thead>
						</table>
						<div align="right" style="width:800px;">
							<input class="btn btn-primary btn-sm" type="button" onclick="location.href='noticeList.do'" value="공지목록">
						</div>
						</c:if>
				</div>
			</form>
		</div>
</body>
</html>