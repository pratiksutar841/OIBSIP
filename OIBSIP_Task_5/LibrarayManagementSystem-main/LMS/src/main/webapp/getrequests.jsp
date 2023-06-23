<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Return Request</title>
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

        .container {
            margin-top: 50px;
        }
        .options {
            display: flex;
            flex-direction: column;
            justify-content: flex-start;
            align-items: flex-start;
            margin-bottom: 30px;
        }
        .options a {
            margin-bottom: 10px;
            padding: 10px 20px;
            border-radius: 20px;
            color: #fff;
            background-color:#24a0ed;
            transition: all 0.3s ease-in-out;
        }
        .options a:hover {
            text-decoration: none;
            color: rgb(248, 248, 248);
            
   
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
        .table th, .table td {
            text-align: center;
            vertical-align: middle;
        }
        table td {
            color: #fff;
        }
        
    </style>
</head>
<body>
    <div class="container">
        <div class="options">
            <a href="../homepage.jsp" class="btn btn-primary">Home</a>
        </div>
        <div class="table-responsive">
            <c:choose>
                <c:when test="${requests ne null && !empty requests}">
                    <h1 class="text-center mb-4">Return Requests</h1>
                    <table class="table table-bordered">
                        <thead class="thead-light">
                            <tr>
                                <th>Student ID</th>
                                <th>Book ID</th>
                                <th>Fine</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${requests}" var="request">
                                <form action="./accept" method="post">
                                    <tr>
                                        <td><input type="text" name="sid" value=${request.sid} readonly /></td>
                                        <td><input type="text" name="bid" value=${request.bid} readonly /></td>
                                        <td><input type="text" name="fine" value=${request.fine} readonly /></td>
                                        <td><input type="submit" class="btn btn-primary" value="accept" /></td>
                                    </tr>
                                </form>
                            </c:forEach>
                        </tbody>
                    </table>
                </c:when>
                <c:otherwise>
                    <h1 class="text-center" style="color: white;">No requests available</h1>
                </c:otherwise>
            </c:choose>
        </div>
    </div>
    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>