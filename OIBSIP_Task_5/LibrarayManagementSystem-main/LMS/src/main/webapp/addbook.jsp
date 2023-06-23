<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Books</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<!-- Custom CSS -->
<style>
@import url('https://fonts.googleapis.com/css2?family=Mochiy+Pop+One&display=swap');
     html,   body {
            background: linear-gradient(-45deg, #ee7752, #e73c7e, #23a6d5, #23d5ab);
	background-size: 400% 400%;
	animation: gradient 15s ease infinite;
	height: 100vh;
     font-family: 'Mochiy Pop One', sans-serif;
     margin: 0;
   
    
    align-items: center;
        }
        @keyframes gradient {
	0% {
		background-position: 0% 50%;
	}
	50% {
		background-position: 100% 50%;
	}
	100% {
		background-position: 0% 50%;
	}
}

 h5 {
	text-align: center;
	color: #fff;
	text-shadow: 2px 2px 4px #000;
}

h1 {
	margin-top: 50px;
	text-align: center;
	color: #fff;
	text-shadow: 2px 2px 4px #000;
}
.table {
	margin-top: 50px;
	margin-bottom: 50px;
	width: 100%;
	max-width: 500px;
	margin-left: auto;
	margin-right: auto;
}

th {
	color: white;
}

.home-button {
	position: absolute;
	top: 10px;
	left: 10px;
}
</style>
</head>
<body>
	<div class="container">



	<h1>Add Books</h1>
		<form method="post" action="./controller/add">
			<table class="table table-bordered">
				<tr>
					<th>Book id</th>
					<td><input type="text" class="form-control" name="bid"
						required="required" placeholder="Enter the book id"></td>
				</tr>
				<tr>
					<th>Book Title</th>
					<td><input type="text" class="form-control" name="title"
						required="required" placeholder="Enter the title" ></td>
				</tr>
				<tr>
					<th>Book Author</th>
					<td><input type="text" class="form-control" name="author"
						required="required" placeholder="Enter the author name"></td>
				</tr>
				<tr>
					<th>Book Quantity</th>
					<td><input type="text" class="form-control" name="quantity"
						required="required" placeholder="Enter the quantity"></td>
				</tr>


				<tr>
					<th></th>
					<td><input type="submit" class="btn btn-primary" value="Add" /></td>
				</tr>
			</table>
		</form>



		<h5>
			<a href="./managebooks.jsp" class="btn btn-secondary">Back</a>
		</h5>
	</div>
	<!-- Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>