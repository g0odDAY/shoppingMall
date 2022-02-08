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
						<td colspan="5"><textarea rows="10" cols="100">${qa.qaContent }</textarea></td>
					</tr>
				</tbody>

			</table>
		</div>
		<br>
		<div>
			<button class="btn btn-primary btn-sm" type="button"
				onclick="location.href='qaList.do'">목록</button>
		</div>
		<div id="disqus_thread"></div>
		<script>
			/**
			 *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
			 *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/
			/*
			 var disqus_config = function () {
			 this.page.url = PAGE_URL;  // Replace PAGE_URL with your page's canonical URL variable
			 this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
			 };
			 */
			(function() { // DON'T EDIT BELOW THIS LINE
				var d = document, s = d.createElement('script');
				s.src = 'https://web1-2.disqus.com/embed.js';
				s.setAttribute('data-timestamp', +new Date());
				(d.head || d.body).appendChild(s);
			})();
		</script>
	
		<noscript>
			Please enable JavaScript to view the <a
				href="https://disqus.com/?ref_noscript">comments powered by
				Disqus.</a>
		</noscript>
		
	</div>
</body>
</html>