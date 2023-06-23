<%@ page language="java"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Borrow Status</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
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
    h1, h5 {
        text-align: center;
        color: #fff;
        text-shadow: 2px 2px 4px #000;
    }
    p {
        text-align: center;
        color: #fff;
        font-size: 18px;
        font-weight: bold;
        text-shadow: 2px 2px 4px #000;
    }
</style>
</head>
<body>
    <div class="container">
        <c:choose>
            <c:when test="${status eq 'success'}">
                <h1>Borrowed Successfully.</h1>
                <br>
                <br>
                <br>
                <br>
                <p>Note: Return it back within 15 days. If you fail to return, INR 10/day fine will be added.</p>
            </c:when>
            <c:otherwise>
                <h1>Borrowed Failed.</h1>
            </c:otherwise>
        </c:choose>
        <h5>
            <a href="../stdtest/home" class="btn btn-secondary">Home</a>
        </h5>
    </div>
    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
