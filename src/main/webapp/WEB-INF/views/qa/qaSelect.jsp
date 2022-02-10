<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
ul {
	padding: 0;
}

li {
	padding: 5px 0;
}
</style>
</head>
<body>
	<div>

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
			<div>
				<ul id="list">
					<c:forEach var="reply" items="${reply }">
						<li onmouseover="this.style.backgroundColor='lightblue'"
							onmouseout="this.style.backgroundColor='white'"><h3>└>${reply.replyUser }:${reply.replyContent}</h3></li>
						<br>
					</c:forEach>
				</ul>
			</div>
			<button class="btn btn-primary btn-sm" type="button"
				onclick="location.href='qaList.do'">목록</button>

		</div>
	</div>
	<form method="post" id="frm">
		<input type="hidden" name="replyNumber" id="replyNumber"
			value="${qa.qaNumber}"> <input type="hidden" name="replyUser"
			id="replyUser" value="user1">
		<h2>user:</h2>
		<textarea rows="2" name="replyContent" id="replyContent"
			placeholder="댓글을 입력하세요...."></textarea>
		<button onclick="addReply(); return false"
			class="btn btn-success btn-lg">댓글달기</button>
	</form>
</body>
<script>
	function addReply(){
	var formData=$('#frm').serialize();
	$.ajax({
		url:'addReply.do',
		type : "post",
        data : formData,
        dataType : "text",
        success(data){
        	
        }
	});
	location.reload();
	}
	var list=document.getElementById('list');
	var li=list.getElementsByTagName('li');
	console.log(li);
	for(var i =0;i<li.length;i++){
		li[i].addEventListener('dblclick',deleteReply);
	}
	function deleteReply(){
		alert('댓글을 삭제하시겟습니까?');
		$.ajax({
			url:'deleteReply.do',
			type : "post",
	        data : {id:'${qa.qaNumber}'
	        	},
	        dataType : "text",
	        success(data){
	        	
	        }
		});
		location.reload();
		}
	
</script>
</html>