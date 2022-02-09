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
			<h2>공지등록</h2>
		</div>
		<div>
			<form id="frm" action="noticeInsert.do" method="post">
				<div>
					<table border="0">
						<tr>
							<th>제 목</th>
							<td colspan="3">
							<input type="text" size="59" id="noticeTitle" name="noticeTitle"></td>
						</tr>
						<tr>
							<th>내 용</th>
							<td colspan="3">
							<textarea rows="10" cols="60" id="noticeSubject" name="noticeSubject"></textarea></td>
						</tr>
					</table>
				</div>
				<br> 
				<input class="btn btn-primary btn-sm" type="submit" value="등록">&nbsp;&nbsp; 
				<input class="btn btn-primary btn-sm" type="reset" value="취소">&nbsp;&nbsp; 
				<input class="btn btn-primary btn-sm" type="button" value="공지목록" onclick="location.href='noticeList.do'">
			</form>
		</div>
	</div>
</body>
</html>