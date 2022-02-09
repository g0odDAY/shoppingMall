<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<div>
			<form id="frm" action="noticeUpdate.do" method="post">
				<div>
					<table border="0">
						<tr>
							<th><button class="btn btn-primary btn-sm" type="button" onclick="location.href='noticeList.do'">공지목록</button></th>
						</tr>
						<tr>
							<th align="right">제 목</th>
							<td colspan="3"><input type="text" size="60"
								id="noticeTitle" name="noticeTitle"
								value="${notice.noticeTitle }"></td>
						</tr>
						<tr>
							<th>내 용</th>
							<td colspan="3"><textarea rows="10" cols="62"
									id="noticeSubject" name="noticeSubject">${notice.noticeSubject }</textarea></td>
						</tr>
					</table>
				</div>
				<br> 
				<input class="btn btn-primary btn-sm" type="submit" value="등록">&nbsp;&nbsp; 
				<input class="btn btn-primary btn-sm" type="reset" value="취소">&nbsp;&nbsp;

			</form>
		</div>
	</div>
</body>
</html>