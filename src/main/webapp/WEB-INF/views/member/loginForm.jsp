<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>

	<div class="container">

		<!-- Outer Row -->
		<div class="row justify-content-center">

			<div class="col-xl-12 col-lg-6 col-md-0">

				<div class="card o-hidden border-5 shadow-lg my-5">
					<div class="card-body p-5">
						<div class="card text-white bg-black">
							<!-- Nested Row within Card Body -->
							<div class="row p-3">
								<div class="mx-auto col-md-8 col-lg-6 order-lg-last"></div>
								<div id="login-image">
									<div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
								</div>
								<div align="center" class="col-lg-12">
									<div align="center" class="p-5">
										<div class="text-center">
											<h1 class="h4 text-grey-900 mb-4">예담샵입니다!</h1>
										</div>
										<form class="user" action="login.do" method="post">
											<div class="form-group">
												<input type="text" class="form-control form-control-user"
													id="id" name="id" aria-describedby="emailHelp"
													placeholder="아이디 입력">
											</div>
											<div class="form-group">
												<input type="password"
													class="form-control form-control-user" id="password"
													name="password" placeholder="비밀번호">
											</div>
											<div class="form-group">
												<div class="custom-control custom-checkbox small">
													<input type="checkbox" class="custom-control-input"
														id="customCheck"> <label
														class="custom-control-label" for="customCheck">저장하기
													</label>
												</div>
											</div>
											<button type="submit"
												class="btn btn-primary btn-user btn-block">로그인</button>

											<hr>
											<a href="index.html"
												class="btn btn-google btn-user btn-block"> <i
												class="fab fa-google fa-fw"></i> 구글 로그인
											</a> <a href="index.html"
												class="btn btn-facebook btn-user btn-block"> <i
												class="fab fa-facebook-f fa-fw"></i> 페이스북 로그린
											</a>
										</form>
										<hr>
										<div class="text-center">
											<a class="small" href="forgot-password.html">비밀번호를 잊으셨나요?</a>
										</div>
										<div class="text-center">
											<a class="small" href="register.do">회원가입!</a>
											<div class="text-center">
												<a class="small" href="main.do">메인페이지로 가시겠습니까?</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>

	</div>
</body>
</html>