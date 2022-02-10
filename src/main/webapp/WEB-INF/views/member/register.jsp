<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
<div class="container">

		<div class="card o-hidden border-0 shadow-lg my-5">
			<div class="card-body p-5 bg-dark">
				<!-- Nested Row within Card Body -->
				<div class="row p-10">
					<div class="mx-auto col-md-8 col-lg-6 order-lg-last"></div>
<div class="card text-white bg-success">
					<div align="center" class="col-lg-12">
						<div class="p-5" >
							<div class="text-center">
								<h1 class="h4 text-gray-900 mb-4">회원가입</h1>
							</div>


							<form class="user" action="${pageContext.request.contextPath}/Result.do" method="post">
								<div class="form-group">

									<input type="text" class="form-control form-control-user"
										id="id" name="id" placeholder="아이디 입력">
								</div>

								<div class="form-group">

									<input type="password" class="form-control form-control-user"
										id="password" name="password" placeholder="비밀번호">
								</div>
								<div class="form-group">
									<input type="password" class="form-control form-control-user"
										id="RepeatPassword" placeholder="비밀번호 확인">
								</div>

								<div class="form-group">
									<input type="text" class="form-control form-control-user"
										id="name" name="name" placeholder="이름" required="required">
								</div>
								<div class="form-group">
									<input type="text" class="form-control form-control-user"
										id="address" name="address" placeholder="이메일">
								</div>
								<div class="form-group">
									<input type="tel" class="form-control form-control-user"
										id="tel" name="tel" placeholder="전화번호">
								</div>
								<div>
								<button type="submit" class="btn btn-primary btn-user btn-block">
									Register Account</button>
							</div>

							</form>
							

							<hr>
							<a href="index.html" class="btn btn-google btn-user btn-block">
								<i class="fab fa-google fa-fw"></i> 구글 등록
							</a> <a href="index.html" class="btn btn-facebook btn-user btn-block">
								<i class="fab fa-facebook-f fa-fw"></i> 페이스북 등록
							</a>

							<hr>
							<div class="text-center">
								<a class="small" href="forgot-password.html">Forgot
									Password?</a>
							</div>
							<div class="text-center">
								<a class="small" href="Result.do">Already have an account?
									Login!</a>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	<script src="js/sb-admin-2.min.js"></script>

</body>
</html>