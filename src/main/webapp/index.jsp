<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap demo</title>
<%@include file="all_css_js.jsp"%>
</head>
<body>
	<div>
		<%@include file="navbar.jsp"%>
		<div class="card py-5">
			<img alt="" src="img/pen.png" class="img-fluid mx-auto" style="max-width: 400px;"
				 />
			<h1 class="text-primary text-uppercase text-center mt-3">Start
				Taking Notes</h1>

			<div class="container text-center">
				<button class="btn btn-outline-primary text-center">Start
					here</button>
			</div>
		</div>
	</div>
</body>
</html>