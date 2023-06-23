<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Book</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
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
    .card {
        background-color: #f9f9f9; /* change background color */
    }
    .btn-primary {
        background-color: #077505; /* change button color */
        border-color: #07f403;
    }
    .btn-primary:hover {
        background-color: #0ea40b;
        border-color: #07f403;
    }
</style>
</head>
<body>
<div class="container-fluid">
    <div class="row justify-content-center mt-5">
        <div class="col-lg-4 col-md-6 col-sm-8 col-xs-12">
            <c:choose>
                <c:when test="${book ne null}">
                   
                        <div class="card">
                            <div class="card-header text-center">Book Details</div>
                            <div class="card-body">
                                <table class="table table-bordered">
                                    <tr>
                                        <th>Book ID</th>
                                        <td><input type="text" class="form-control-plaintext" name="bid" value="${book.bid}" readonly></td>
                                    </tr>
                                    <tr>
                                        <th>Title</th>
                                        <td><input type="text" class="form-control-plaintext" name="title" value="${book.title}" readonly></td>
                                    </tr>
                                    <tr>
                                        <th>Author</th>
                                        <td><input type="text" class="form-control-plaintext" name="author" value="${book.author}" readonly></td>
                                    </tr>
                                    <tr>
                                        <th>Quantity</th>
                                        <td><input type="text" class="form-control-plaintext" name="quantity" value="${book.quantity}" readonly></td>
                                    </tr>
                                   
                                    
                                </table>
                            </div>
                            <div class="card-footer text-center">
                                <a href="../searchbook.jsp" class="btn btn-link">Back</a>
                                
                            </div>
                        </div>
                    
                </c:when>
                
                <c:otherwise>
                    <div class="card">
                        <div class="card-header text-center">Book Details</div>
                        <div class="card-body">
                            <h1 class="text-center">Requested Book is not available</h1>
                        </div>
                      
                        <div class="card-footer text-center">
                            <a href="../homepage/managebooks.jsp" class="btn btn-link">Back</a>
                        </div>
                    </div>
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
