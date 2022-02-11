<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function submitFun(){
		window.alert('공지를 등록하였습니다.');
		document.forms.frm.submit();
	}
</script>
<body>
		<div class="bg-light rounded h-100 p-4" align="center">
			<h1 class="mb-4" >공 지 등 록</h1>
			<form id="frm" action="noticeInsert.do" method="post">
				<div>
					<table class="table" style="width:1000px;">
						<tr>
							<th class="form-floating" width="100">작성자</th>
							<td><input class="form-control" id="noticeWriter" name="noticeWriter" value="${name }" readonly="readonly"></td>
						</tr>
						<tr>
							<th class="form-floating" width="100">제 목</th>
							<td><input class="form-control" id="noticeTitle" name="noticeTitle"></td>
						</tr>
						<tr>
							<th class="form-floating" width="100">내 용</th>
							<td><textarea class="form-control" rows="10" id="noticeSubject" name="noticeSubject"></textarea></td>
						</tr>
					</table>
				</div>
				<br>
				<div align="right" style="width:1000px;">
				<input class="btn btn-primary btn-sm" type="button" onclick="submitFun()" value="등록">&nbsp;&nbsp; 
				<input class="btn btn-primary btn-sm" type="reset" value="초기화">&nbsp;&nbsp; 
				<input class="btn btn-primary btn-sm" type="button" value="공지목록" onclick="location.href='noticeList.do'">
				</div>
			</form>
		</div>
</body>
</html>