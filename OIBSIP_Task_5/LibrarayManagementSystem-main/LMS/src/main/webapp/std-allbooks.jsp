<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>ALL Books</title>
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
            background-color: #e61d60;
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
        <h1>List Of All Books</h1>
        <div class="options">
            <a href="../stdtest/home">Home</a>
        </div>
        <div class="table-responsive">
            <c:choose>
                <c:when test="${!empty allBooks}">
                    <table class="table table-bordered">
                        <thead class="thead-light">
                            <tr>
                                <th>Book ID</th>
                                <th>Title</th>
                                <th>Author</th>
                                <th>Quantity</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${allBooks}" var="book">
                                <tr>
                                    <td>${book.bid}</td>
                                    <td>${book.title}</td>
                                    <td>${book.author}</td>
                                    <td>${book.quantity}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </c:when>
                <c:otherwise>
                    <h2 class="text-center" style="color: blue;">No Books Available</h2>
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

