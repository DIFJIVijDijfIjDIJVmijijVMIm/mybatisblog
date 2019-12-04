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
	style="background-image: url('../resources/img/home-bg.jpg')">
	<div class="overlay"></div>
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-md-10 mx-auto">
				<div class="site-heading">
					<h1>Clean Blog</h1>
					<span class="subheading">A Blog Theme by Start Bootstrap</span>

				</div>
			</div>
		</div>
	</div>
</header>

<!-- Main Content -->
<div class="container">
	<div class="row">
		<div class="col-lg-8 col-md-10 mx-auto">

			<c:forEach var="board" items="${boards}">

				<div class="post-preview">
					<a href="board/updateForm/${board.id}">
						<h2 class="post-title">${board.title}</h2>
					</a>
					<p class="post-meta">
						Posted by ${board.username} ${board.createDate}
					</p>
				</div>
				<hr>
				
			</c:forEach>

			<!-- Pager -->
			<div class="clearfix">
				<a class="btn btn-primary float-right" href="#">Older Posts
					&rarr;</a>
			</div>

		</div>
	</div>
</div>

<hr>

<%@include file="/WEB-INF/views/include/footer.jsp"%>