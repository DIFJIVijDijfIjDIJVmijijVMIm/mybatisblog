<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="/WEB-INF/views/include/nav.jsp"%>

<!--  
	1. MyBatis + MySQL 연결
	2. 부트스트랩 연결
	3. CRUD 구현
	4. 로그인, 회원가입 (인터셉터로 처리)
	5. 프로필 사진 업로드
-->

<!-- Page Header -->
<header class="masthead"
	style="background-image: url('/resources/img/home-bg.jpg')">
	<div class="overlay"></div>
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-md-10 mx-auto">
				<div class="site-heading">
					<h1>로그인</h1>

				</div>
			</div>
		</div>
	</div>
</header>

<!-- Main Content -->
<div class="container">
	<div class="row">
		<div class="col-lg-8 col-md-10 mx-auto">
			<div class="container">
				<form action="/user/login" method="post">
					<div class="form-group">
						<label for="usr">ID:</label> <input type="text"
							class="form-control" id="username" name="username">
					</div>
					<div class="form-group">
						<label for="pwd">Password:</label> <input type="password"
							class="form-control" id="password" name="password">
					</div>					
					<button type="submit" class="btn btn-primary">로그인</button>
				</form>
			</div>

		</div>
	</div>
</div>

<hr>


<%@include file="/WEB-INF/views/include/footer.jsp"%>