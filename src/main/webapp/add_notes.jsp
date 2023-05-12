<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="all_css_js.jsp"%>
	<%@include file="navbar.jsp"%>
	<div class="container">
		<!-- form -->
		<br>
		<h3>Add a Note</h3>
		<br>
		<form action="AddNotesServlet" method="post">
			<div class="mb-3">

				<label for="title" class="form-label">Title</label> <input
					type="text" name="title" required class="form-control" id="title"
					aria-describedby="emailHelp"
					placeholder="Add a title for your note">
			</div>
			<div class="mb-3">
				<label for="content" class="form-label">Content</label>
				<textarea name="content" required style="height: 300px;"
					class="form-control" id="content"></textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-primary">Add</button>
			</div>
		</form>
	</div>
</body>

</html>