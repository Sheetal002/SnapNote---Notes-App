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
<title>Insert title here</title>
<%@include file="all_css_js.jsp"%>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h1>Edit Your Note</h1>
		<%
		int noteId = Integer.parseInt(request.getParameter("note_id"));
		Session s = FactoryProvider.getFactory().openSession();
		AddNotes note = (AddNotes) s.get(AddNotes.class, noteId);
		s.save(note);

		s.close();
		response.setContentType("text/html");
		%>

		<form action="UpdateServlet" method="post">
			<div class="mb-3">
			<input value=<%= note.getNoteId() %> type="hidden" name="noteId"/>
				<label for="title" class="form-label">Title</label> <input
					type="text" name="title" required class="form-control" id="title"
					aria-describedby="emailHelp"
					placeholder="Add a title for your note"
					value="<%=note.getTitle()%>">
			</div>
			<div class="mb-3">
				<label for="content" class="form-label">Content</label>
				<textarea name="content" required style="height: 300px;"
					class="form-control" id="content">
     <%=note.getContent()%></textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-success">Save Note</button>
			</div>
		</form>

	</div>
</body>
</html>