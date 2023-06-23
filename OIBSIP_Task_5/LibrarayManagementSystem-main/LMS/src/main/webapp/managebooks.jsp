<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Books</title>
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

.options {
	display: flex;
	flex-direction: column;
	margin-bottom: 30px;
	text-align: center;
}

.btn {
	margin: 10px 0;
	padding: 10px 20px;
	border-radius: 20px;
	color: #fff;
	background-color: #24a0ed;
	transition: all 0.3s ease-in-out;
	width: 100px;
	text-align: center;
}

.btn:hover {
	text-decoration: none;
	width: 220px;
    height: 50px;
    border: none;
    outline: none;
    color: #fff;
   text-align: center;
    cursor: pointer;
    position: relative;
    z-index: 0;
    border-radius: 10px;
}
.btn:before 
{
   
   
    position: absolute;
    top: -2px;
    left:-2px;
    background-size: 400%;
    z-index: -1;
    filter: blur(5px);
    width: calc(100% + 4px);
    height: calc(100% + 4px);
    animation: glowing 20s linear infinite;
    opacity: 0;
    transition: opacity .3s ease-in-out;
    border-radius: 10px;
}

.btn:active {
    color: #000
}

.btn:active:after {
    background: transparent;
}
.btn:hover:before {
    opacity: 1;
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
</style>
</head>
<body>
	<div class="container">
		<h1>Manage Books</h1>
		<div class="options">

			<a href="./searchbook.jsp" class="btn">Search</a> <a
				href="./addbook.jsp" class="btn">Add</a> <a href="./updatebook.jsp"
				class="btn">Update</a> <a href="./deletebook.jsp" class="btn">Delete</a>
			<a href="./homepage.jsp" class="btn">Back</a>

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
