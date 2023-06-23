<!DOCTYPE html>
<html>
<head>
<title>Student Login</title>
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

form {
	background-color: rgba(255, 255, 255, 0.8);
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0px 0px 10px #ccc;
	width: 500px;
	margin: auto;
	margin-top: 50px;
}

h1 {
	text-align: center;
	margin-top: 0;
}

label {
	display: block;
	margin-bottom: 10px;
}

input[type=text], input[type=password], select {
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	margin-bottom: 20px;
	font-size: 16px;
}

		input[type=submit] {
	background-color: #4CAF50;
	color: white;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	font-size: 16px;
}

input[type=submit]:hover {
	background-color: #45a049;
}

button[type=button] {
	background-color: #008CBA;
	color: white;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	font-size: 16px;
	margin-left: 20px;
}

button[type=button]:hover {
	background-color: #006F8A;
}

.container {
	display: flex;
	justify-content: space-between;
}

.container>div {
	flex-basis: 45%;
}

.clearfix::after {
	content: "";
	clear: both;
	display: table;
}

.signup-link {
	text-align: center;
	margin-top: 20px;
	color: #fff;
	font-size: 16px;
	font-weight: bold;
}

.signup-link a {
	color: #0a7208fd;
	text-decoration: none;
}

.signup-link a:hover {
	text-decoration: underline;
}
</style>
</head>
<body>
<br>
	<h1 style="color: white; text-align: center;">INVALID USERNAME OR PASSWORD</h1>
	<form action="../stdtest/login" method="post">
		<h1>Student-Login</h1>
		<label for="student-id">Student ID</label> <input type="text"
			name="sid"  required> <label
			for="password">Password</label> <input type="password"
			name="password" required> <input
			type="submit" value="Log In">
			<button type="button" onclick="window.location.href='../index.html'">Home</button>
			
		<div class="signup-link">
			<a href="../std-signup.html">Don't have an account? Register</a>
		</div>
	</form>



</body>
</html>

