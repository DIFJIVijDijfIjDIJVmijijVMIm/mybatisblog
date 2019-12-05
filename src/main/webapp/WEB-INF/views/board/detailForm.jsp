<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@include file="/WEB-INF/views/include/nav.jsp"%>

<!-- Page Header -->
<header class="masthead"
	style="background-image: url('/resources/img/post-bg.jpg')">
	<div class="overlay"></div>
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-md-10 mx-auto">
				<div class="post-heading">
					<h1>${board.title}</h1>
					<span class="meta">Posted by ${board.username}
						${board.createDate}</span>
				</div>
			</div>
		</div>
	</div>
</header>

<!-- Post Content -->
<article>
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-md-10 mx-auto">${board.content}</div>
		</div>
	</div>
</article>

<hr>

<div class="col-md-6 text-right">
	<a href="/board/updateForm/${board.id}" ><h2 class="post-title">수정</h2></a>
</div>
<div class="col-md-6 text-right">
	<a href="/board/delete/${board.id}" ><h2 class="post-title">삭제</h2></a>
</div>

<%@include file="/WEB-INF/views/include/footer.jsp"%>