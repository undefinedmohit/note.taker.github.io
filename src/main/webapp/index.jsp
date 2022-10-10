<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    
    <title>Note Taker : Home Page </title>
    <%@include file="all_js_css.jsp" %>
  </head>
  <body>
    
    <div class="container-fluid p-0 m-0">
    
    	<%@include file="navbar.jsp" %>
    
    
    </div>
    
    <div class="container text-center">
    
    <img alt="" style="max-width: 420px" src="img/notes.png" class="image-fluid mt-2">
    
    <br>
    <h1 class="text-uppercase">Start Taking Notes</h1>
    <br>
    
    <a href="add_notes.jsp" class="btn btn-outline-success btn-lg" role="button" aria-pressed="true">Click Me To Start<i class="fas fa-spinner fa-spin ml-1"></i></a>
    </div>
    

	
	</body>
</html>