<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Add Notes</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>

	<div class="container-fluid p-0 m-0">

		<%@include file="navbar.jsp"%>



		<!-- this is add form -->
		<div class="container">
			<form action="SaveNoteServlet" method="post">
				<div class="form-group">
					<label for="title">Note Title</label> 
					<input
					 required="required"
						type="text" 
						name="title"
						class="form-control" id="title" placeholder="Enter here..."> 
						
				</div>
				<div class="form-group">
					<label for="note-content">Note Content</label> 
					<textarea required="required"
					name="content"
					 class="form-control" 
					id="content" 
					 placeholder="enter your content..."
					 style="height: 300px;"
					></textarea>
				</div>
				<div class="container text-center">
		
				<button type="submit" class="btn btn-primary">Add</button>
				</div>
			</form>

		</div>
		
		
		<!-- end of form -->

	</div>

</body>
</html>