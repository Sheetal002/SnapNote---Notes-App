<%@ page import="com.helper.FactoryProvider"%>
<%@ page import="com.entities.AddNotes"%>

<%@ page import="org.hibernate.Session"%>
<%@ page import="org.hibernate.Query"%>
<%@ page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Notes</title>
<%@include file="all_css_js.jsp"%>

</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h1 class="text-uppercase">All notes</h1>
		<div class="row">
			<div class="col-12">

				<%
				Session s = FactoryProvider.getFactory().openSession();
				Query q = s.createQuery("from AddNotes");
				List<AddNotes> list = q.list();
				for (AddNotes note : list) {
				%>

				<div class="card mt-3 ">

					<img src="img/pen.png" class="mx-auto" style="max-width: 100px"
						class="card-img-top" alt="...">
					<div class="card-body px-5">
						<h5 class="card-title"><%=note.getTitle()%></h5>
						<p class="card-text"><%=note.getContent()%></p>
						<div class="container text-center mt-2">
							<a href="ToDeleteServlet?note_id=<%=note.getNoteId()%>"
								class="btn btn-danger">Delete</a> <a
								href="edit.jsp?note_id=<%=note.getNoteId()%>"
								class="btn btn-primary">Update</a>
						</div>
					</div>
				</div>

				<%
				out.println(note.getAddedDate() + " : " + note.getTitle() + "<br>");

				}

				s.close();
				%>

			</div>
		</div>
	</div>

</body>
</html>