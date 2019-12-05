<%@page import="org.springframework.web.multipart.MultipartRequest"%>
<%@page import="com.cos.blog.model.User"%>
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
					<h1>프로필 사진 수정</h1>

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
				<form action="/home" method="POST" enctype="multipart/form-data">
					<!-- MIME 타입 -->
					<input type="hidden" name="username" value="${sessionScope.user.username}">
					 userProfile : 
					 <input id="img__imput" type="file" name="userProfile" /> <br/>
					  <input type="submit" value="전송" />
				</form>
			</div>

		</div>
	</div>
</div>

<hr>

<script>
	$("#img__input").on("change", handleImgFile);
	
	function handleImgFile(e) {
		console.log(e);
		console.log(e.target);
		console.log(e.target.files);
		console.log(e.target.files[0]);
		
		var f = e.target.files[0];
		
		if(!f.type.match("image.*")){
			console.log("이미지 타입입니다.");
			return;	
		}
		
		var reader = new FileReader();
		
		reader.onload = function(e){
			console.log("==========");
			console.log(e.target);
			console.log(e.target.result);	//파일 로딩이 성공한 결과
			$("#img__wrap").attr("src", e.target.result);
		}
		
		reader.readAsDataURL(f);
	}
</script>

<%@include file="/WEB-INF/views/include/footer.jsp"%>