<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>






<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Update Book</title>
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

.container {
	margin-top: 50px;
}

.form-group {
	margin-bottom: 30px;
}

h1 {
	text-align: center;
	margin-bottom: 30px;
	color: #fff;
	text-shadow: 2px 2px 4px #000;
}

h2 {
	text-align: center;
	margin-top: 50px;
	font-style: italic;
	font-size: 1.5rem;
	color: #fff;
	text-shadow: 2px 2px 4px #000;
}

label[for="bid"] {
	color: #fff;
}
</style>
</head>
<body>
	<div class="container">
		<h1>Update Book</h1>
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<form action="./controller/get" method="post">
					<div class="form-group">
						<label for="bid">Book Id</label> <input type="text"
							class="form-control" name="bid" placeholder="Enter the book id" required="required">
					</div>
					<div class="form-group text-center">
						<button type="submit" class="btn btn-primary mr-2">Search</button>
						<a href="./managebooks.jsp" class="btn btn-secondary">Back</a>
					</div>
				</form>
			</div>
		</div>
		
	</div>
	<!-- Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>