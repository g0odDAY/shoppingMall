<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객문의</title>
</head>

<body>
<table class="table table-striped table-dark">
  <thead>
    <tr>
      <th scope="col">글번호</th>
      <th scope="col">글작성자</th>
      <th scope="col">제목</th>
      <th scope="col">내용</th>
      <th scope="col">작성일자</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${qa }" var="qa">
    <tr onmouseover='this.style.background="orange"'
    onclick="qaSelect(${qa.qaNumber})">
      <th scope="row">${qa.qaNumber }</th>
      <td>${qa.qaWriter }</td>
      <td>${qa.qaTitle }</td>
      <td>${qa.qaContent }</td>
      <td>${qa.qaDate }</td>
    </tr>
 </c:forEach>
  </tbody>
</table>
   <a class="btn btn-primary btn-sm" href="qaForm.do">문의작성</a>
	<form id="frm" action="qaSelect.do" method="post">
		<input type="hidden" id="qaNumber" name="qaNumber">
	</form>
</body>
<script type="text/javascript">
		function qaSelect(id){
			frm.qaNumber.value=id;
			frm.submit();
		}
</script>
</html>