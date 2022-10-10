<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Note Taker : Update</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container-fluid p-0 m-0">

		<%@include file="navbar.jsp"%>
	</div>


	<%
	int noteId = Integer.parseInt(request.getParameter("note_id").trim());
	Session s = FactoryProvider.getFactory().openSession();

	Note n = (Note) s.get(Note.class, noteId);
	

	s.close();
	%>
	
	<!-- this is add form -->
	<div class="container">
		<form action="EditServlet" method="post">
		<input name="id"  class="form-control" value="<%= n.getId()%>" type="hidden"/>
			<div class="form-group">
				<label for="title"></label>Note Title
				
				<input required="required"
					type="text" name="title" class="form-control" id="title"
					placeholder="Enter here..." value="<%= n.getTitle() %>"/>
					</div>
			<div class="form-group">
				<label for="note-content">Note Content</label>
				<textarea required="required" name="content" class="form-control"
					id="content" placeholder="enter your content..."
					style="height: 300px;"><%=n.getContent() %></textarea>
			</div>
			<div class="container text-center">

				<button type="submit" class="btn btn-success">Save Changes</button>
			</div>
		</form>

	</div>


	<!-- end of form -->


</body>
</html>