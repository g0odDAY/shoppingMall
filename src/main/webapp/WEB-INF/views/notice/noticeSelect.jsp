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
				frm.action = "noticeUpdate.do";
			} else if (str == "D") {
				frm.action = "noticeDeleteForm.do";
			}
			frm.submit();
		}
	</script>
	<div align="center">
		<div>
			<h2>공지사항</h2>
		</div>
		<div>
			<form id="frm" method="post">
				<div>
					<table border="0">
							<tr>
								<th><button class="btn btn-primary btn-sm" type="button" onclick="CallUpdate('U')">수정</button></th>
								<th><button class="btn btn-primary btn-sm" type="button" onclick="CallUpdate('D')">삭제</button></th>
								<th><button class="btn btn-primary btn-sm" type="button" onclick="location.href='noticeList.do'">공지목록</button></th>
							</tr>
							<tr style="vertical-align: middle" align="right">
								<th width="100">제 목&nbsp;&nbsp;</th>
								<td width="700" align="left">
								<%-- <input type="text" id="noticeTitle" name="noticeTitle" values="${notice.noticeTitle }"> --%>
								<textarea rows="1" cols="50" id="noticeTitle" name="noticeTitle">${notice.noticeTitle }</textarea>
								</td>
							</tr>
							<tr style="vertical-align: middle" align="right">
								<th width="100">글번호&nbsp;&nbsp;</th>
								<td width="700" align="left">
								<input type="text" id="noticeId" name="noticeId" value="${notice.noticeId }" readonly="readonly"></td>
							</tr>

							<tr style="vertical-align: middle" align="right">
								<th width="100">작성자&nbsp;&nbsp;</th>
								<td width="700" align="left">${notice.noticeWriter }</td>
							</tr>
							<tr style="vertical-align: middle" align="right">
								<th width="100">작성일자&nbsp;&nbsp;</th>
								<td width="700" align="left">${notice.noticeDate }</td>
							</tr>
							<tr style="vertical-align: middle" align="right">
								<th width="100">조회수&nbsp;&nbsp;</th>
								<td width="700" align="left">${notice.noticeHit }</td>
							</tr>
							<tr style="vertical-align: top" align="right">
								<th width="100">내 용&nbsp;&nbsp;</th>
								<td width="700" align="left">
								<textarea rows="5" cols="50" id="noticeSubject" name="noticeSubject">${notice.noticeSubject }</textarea></td>
							</tr>
						</table>
						<table border="0">
							<tr>
								<th><button class="btn btn-primary btn-sm" type="button" onclick="location.href='noticeList.do'">공지목록</button></th>
							</tr>
							<tr style="vertical-align: middle" align="right">
								<th width="100">제 목&nbsp;&nbsp;</th>
								<td width="700" align="left">${notice.noticeTitle }</td>
							</tr>
							<tr style="vertical-align: middle" align="right">
								<th width="100">글번호&nbsp;&nbsp;</th>
								<td width="700" align="left">${notice.noticeId }</td>
							</tr>

							<tr style="vertical-align: middle" align="right">
								<th width="100">작성자&nbsp;&nbsp;</th>
								<td width="700" align="left">${notice.noticeWriter }</td>
							</tr>
							<tr style="vertical-align: middle" align="right">
								<th width="100">작성일자&nbsp;&nbsp;</th>
								<td width="700" align="left">${notice.noticeDate }</td>
							</tr>
							<tr style="vertical-align: middle" align="right">
								<th width="100">조회수&nbsp;&nbsp;</th>
								<td width="700" align="left">${notice.noticeHit }</td>
							</tr>
							<tr style="vertical-align: top" align="right">
								<th width="100">내 용&nbsp;&nbsp;</th>
								<td width="700" height="300" align="left"
									style="vertical-align: top">${notice.noticeSubject }</td>
							</tr>
						</table>
				</div>
			</form>
		</div>
	</div>
</body>
</html>