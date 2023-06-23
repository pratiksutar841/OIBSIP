<%@ page language="java"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Issue Books</title>
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
    <br><br><br>
        <c:choose>
            <c:when test="${status eq 'success'}">
                <h1>Issued Successfully.</h1>
                <br>
                <br>
                <br>
                <br>
                <p>Note: Inform the Student to Return it back within 15 days. If Student fail to return, INR 10/day fine will be added.</p>
            </c:when>
            <c:when test="${limit eq 'out'}">
                <h1>Student Limit Is Reached.</h1>
                <br>
                <br>
                <br>
                <br>
                <p>Note: Student can borrow only 3 books.</p>
            </c:when>
            <c:when test="${quantity eq 'less'}">
                <h1>Book is not available right now.</h1>
                <br>
                <br>
                <br>
                <br>
                <p>Note: Book is not available right now.</p>
            </c:when>
            <c:otherwise>
                <h1>Book Issue Failed.</h1>
                <br><br><br>
                <p>Note: Please enter the correct student id and book id  </p>
            </c:otherwise>
        </c:choose>
        <h5>
            <a href="../homepage.jsp" class="btn btn-secondary">Home</a>
        </h5>
    </div>
    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
