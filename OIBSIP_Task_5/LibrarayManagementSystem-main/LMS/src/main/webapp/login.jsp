<%@ page language="java"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Staff-Login</title>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@600;900&display=swap" rel="stylesheet">
<style>
@import url('https://fonts.googleapis.com/css2?family=Pacifico&display=swap');

html {
  height: 100%;
}
body {
  margin:0;
  padding:0;
  font-family: 'Poppins', sans-serif;
  background: #2b5876;  /* fallback for old browsers */
  background: -webkit-linear-gradient(to right, #4e4376, #2b5876);  /* Chrome 10-25, Safari 5.1-6 */
  background: linear-gradient(to right, #4e4376, #2b5876); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
  
 
  
}

form {
	position: absolute;
  top: 50%;
  left: 50%;
  width: 400px;
  padding: 40px;
  transform: translate(-50%, -50%);
  background: transparent;
  box-sizing: border-box;
  box-shadow: 0 15px 25px rgba(0,0,0,.6);
  border-radius: 10px;
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
	border-radius: 5rem;
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
	border-radius: 5rem;
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
	<form method="post" action="./controller">
		<h1>Librarian-Login</h1>
		<label for="student-id">Librarian ID</label> <input type="text"
			name="userName" required> <label
			for="password">Password</label> <input type="password"
			name="password"  required> <input
			type="submit" value="Log In">
		<button type="button" onclick="window.location.href='./index.html'">Home</button>
		
	</form>
	

	 



</body>
</html>