<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
function CallUpdate(str,id) {
	if (str == "U") {
		window.alert('문의를 수정하였습니다.');
		frm.action = "qaUpdate.do";
	} else if (str == "D") {
		window.alert('문의를 삭제하였습니다.');
		frm.action = "qaDeleteForm.do";
	} else if (str == "R") {
		window.alert('답변을 등록하였습니다.');
		frm.action = "addReply.do";
	} 
	frm.submit();
}

function replyDelete(Rid, Qid) {
	window.alert('답변을 삭제하였습니다.');
	document.forms.rdf.replyId.value=Rid;
	document.forms.rdf.qaNumber.value=Qid;
    document.forms.rdf.submit();	
}
</script>
	<div class="bg-light rounded h-100 p-4" align="center">
		<form id="frm" method="post">
		<div class="mb-4">
			<h1>문의사항 보기</h1>
		</div>
		<div>
			<table class="table" style="width:1000px;">
				<tbody class="text-center mb-0">
					<tr>
						<th class="form-floating">문의번호</th>
						<td class="blockquote" align="left">${qa.qaNumber }</td>
					</tr>
					<tr>
						<th class="form-floating">작성자</th>
						<td class="blockquote" align="left">${qa.qaWriter }</td>
					</tr>
					<tr>
						<th class="form-floating">문의작성일</th>
						<td class="blockquote" align="left">${qa.qaDate }</td>
					</tr>
					<tr>
						<th class="form-floating">문의명</th>
						<c:if test="${author != 'ADMIN' && qa.qaWriter != name }">
						<td class="blockquote" align="left">${qa.qaTitle }</td>
						</c:if>
						<c:if test="${author == 'ADMIN' || qa.qaWriter == name }">
						<td><input class="form-control" id="qaTitle" name="qaTitle" value="${qa.qaTitle }"></td>
						</c:if>
					</tr>
					<tr>
						<th class="form-floating" style="vertical-align: top;">문의내용</th>
						<c:if test="${author != 'ADMIN' && qa.qaWriter != name }">
						<td class="blockquote" align="left" style="vertical-align: top; white-space: pre;">${qa.qaContent }</td>
						</c:if>
						<c:if test="${author == 'ADMIN' || qa.qaWriter == name }">
						<td><textarea class="form-control" rows="4" id="qaContent" name="qaContent">${qa.qaContent }</textarea></td>
						</c:if>
					</tr>

					<c:forEach var="reply" items="${reply }">
						<c:if test="${not empty reply.replyContent }">
							<tr>
								<th class="form-floating" style="vertical-align: top;">└>${reply.replyUser }의답변</th>
								<td class="blockquote" align="left" style="vertical-align: top; white-space: pre;">${reply.replyContent}</td>
								<c:if test="${author == 'ADMIN' || qa.qaWriter == name }">
								<td><input class="btn btn-primary btn-sm" type="button" onclick="replyDelete(${reply.replyId },${qa.qaNumber })" value="답변삭제"></td>
								</c:if>
							</tr>
						</c:if>
					</c:forEach>
					<c:if test="${author == 'ADMIN' || qa.qaWriter == name }">
					<tr style="width:800px;">
						<th class="form-floating" style="vertical-align: top;">답변하기</th>
						<td><textarea class="form-control" rows="1" id="replyContent" name="replyContent"></textarea></td>
						<td><input type="hidden" id="replyNumber" name="replyNumber" value="${qa.qaNumber }">
						<input type="hidden" id="replyUser" name="replyUser" value="${name }"></td>
						<td><input class="btn btn-primary btn-sm" type="button" onclick="CallUpdate('R')" value="답변등록"></td>
					</tr>
					</c:if>
				</tbody>
			</table>
			<div align="right" style="width:1000px;">
				<c:if test="${author == 'ADMIN' || qa.qaWriter == name }">
					<input type="hidden" id="qaNumber" name="qaNumber" value="${qa.qaNumber }">
					<input class="btn btn-primary btn-sm" type="button" onclick="CallUpdate('U')" value="수정">
					<input class="btn btn-primary btn-sm" type="button" onclick="CallUpdate('D')" value="삭제">
				</c:if>
				<input class="btn btn-primary btn-sm" type="button" onclick="location.href='qaList.do'" value="목록">
			</div>
		</div>
		</form>
		<form action="deleteReply.do" id="rdf" name="rdf" method="post">
			<input type="hidden" id="replyId" name="replyId">
			<input type="hidden" id="qaNumber" name="qaNumber">
		</form>
	</div>
</body>
</html>