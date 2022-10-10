<%@page import="org.hibernate.query.Query"%>
<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>

<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Note Taker : All Notes</title>
<%@include file="all_js_css.jsp"%>

</head>
<body>

	<div class="container-fluid p-0 m-0">

		<%@include file="navbar.jsp"%>

		<br>
		<div class="container">
			<h1 class="text-uppercase">All Notes:</h1>

			<div class="row">

				<div class="col-12">

					<%
					Session s = FactoryProvider.getFactory().openSession();

					Query q = s.createQuery("from Note");

					List<Note> list = q.list();

					for (Note note : list) {
					%>

					<div class="card mt-3">

						<div class="card-body">
							<div class="container text-center pb-3">
								<img class="card-img-top pb-2 " style="max-width: 75px"
									src="img/notepad.png" alt="Card image cap">
							</div>
							<h5 class="card-title"><%=note.getTitle()%></h5>
							<p class="card-text"><%=note.getContent()%></p>
							<div class="container text-center m-1">
								<a href="DeleteServlet?note_id=<%=note.getId()%>"class="btn btn-danger">Delete</a> 
									<a href="edit.jsp?note_id=<%= note.getId()%>"class="btn btn-primary">Update</a>
							</div>
						</div>
					</div>



					<%
					}

					s.close();
					%>
				</div>


			</div>







		</div>
	</div>

</body>
</html>