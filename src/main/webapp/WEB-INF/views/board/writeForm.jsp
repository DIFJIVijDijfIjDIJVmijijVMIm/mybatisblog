<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="/WEB-INF/views/include/nav.jsp"%>
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.js"></script>

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
			<form class="row contact_form" action="board/write"  method="post">
				<div class="col-md-12">
					<div class="form-group">
						<input type="text" class="form-control" id="title" name="title"
							placeholder="title">
					</div>

				</div>
				<div class="col-md-12">
					<div class="form-group">
						<textarea class="form-control" name="content" id="summernote"></textarea>
					</div>
				</div>
				<div class="col-md-12 text-right">
					<button type="submit" value="submit" class="btn submit_btn">Posting</button>
				</div>
			</form>
		</div>
	</div>
</div>

<hr>

<script>
      $('#summernote').summernote({
        placeholder: '',
        tabsize: 2,
        height: 500
      });
      $('.dropdown-toggle').dropdown();
</script>

<%@include file="/WEB-INF/views/include/footer.jsp"%>