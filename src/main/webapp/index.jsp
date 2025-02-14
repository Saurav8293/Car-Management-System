<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Car Management Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        text-align: center;
        margin: 0;
        padding: 0;
    }
    .container {
        margin-top: 100px;
        background: white;
        padding: 30px;
        width: 50%;
        margin-left: auto;
        margin-right: auto;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        border-radius: 10px;
    }
    h1 {
        color: #333;
        margin-bottom: 20px;
    }
    .btn {
        display: inline-block;
        text-decoration: none;
        color: white;
        background: #007bff;
        padding: 12px 20px;
        font-size: 18px;
        border-radius: 5px;
        margin: 10px;
        transition: 0.3s ease-in-out;
    }
    .btn:hover {
        background: #0056b3;
    }
</style>
</head>
<body>
    <div class="container">
        <h1>Welcome to the Car Showroom </h1>
        <a href="add-car.jsp" class="btn">Add Car</a>
        <a href="display-cars" class="btn">Display Cars</a>
    </div>
</body>
</html>
