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
	<div >

		<div>
			<h1>문의사항 보기</h1>
		</div>
		<div>
			<table class="table table-striped table-dark">
				<tbody>
					<tr>
						<th>글번호</th>
						<td>${qa.qaNumber }</td>
						<th>작성자</th>
						<td>${qa.qaWriter }</td>
						<th>글작성일</th>
						<td>${qa.qaDate }</td>
					</tr>
					<tr>
						<th>제목</th>
						<td colspan="5">${qa.qaTitle }</td>
					</tr>
					<tr>
						<th>내용</th>
						<td colspan="5"><textarea rows="6" cols="100">${qa.qaContent }</textarea></td>
					</tr>
				</tbody>
			</table>
			<div id="reply1">
			<c:forEach var="reply" items="${reply }">
			└>${reply.replyUser }:${reply.replyContent}<br>
			</c:forEach>
			
			</div>
			<button class="btn btn-primary btn-sm" type="button"
				onclick="location.href='qaList.do'">목록</button>
			<button class="btn btn-primary btn-sm" onclick="addReply(${qa.qaNumber }); return false">댓글달기</button>
		</div>
	</div>
	<div id="reply">
	
	</div>
</body>
<script>



	var reply=document.getElementById("reply");
	console.log(reply);
	function addReply(number){
		console.log(number);
		
		var form=document.createElement('form');
		form.setAttribute('method','post');
		form.setAttribute('action','addReply.do');
		form.innerText="댓글입력 : ";
		console.log(form);
		//글번호
		var hiddenInput=document.createElement('input');
		hiddenInput.setAttribute('type','hidden');
		hiddenInput.setAttribute('name','replyNumber');
		hiddenInput.setAttribute('id','replyNumber');
		hiddenInput.setAttribute('value','${qa.qaNumber}');
		//작성자
		var hiddenInput1=document.createElement('input');
		hiddenInput1.setAttribute('type','hidden');
		hiddenInput1.setAttribute('name','replyUser');
		hiddenInput1.setAttribute('id','replyUser');
		hiddenInput1.setAttribute('value','${id}');
		//댓글내용
		var input=document.createElement('input');
		input.setAttribute('type','text');
		input.setAttribute('name','replyContent');
		input.setAttribute('id','replyContent');
		console.log(input);
		
		var btn=document.createElement('button');
		btn.setAttribute('id','addBtn');
		btn.setAttribute('text','submit');
		btn.innerText="입력";
		form.appendChild(hiddenInput);
		form.appendChild(hiddenInput1);
		form.appendChild(input);
		form.appendChild(btn);
		
		
		
		console.log(form);
		reply.appendChild(form);
		console.log(reply);
	};
</script>
</html>