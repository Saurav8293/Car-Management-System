<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Car Details</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    .container {
        background: white;
        padding: 30px;
        width: 40%;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        border-radius: 10px;
        text-align: center;
    }
    h2 {
        color: #333;
        margin-bottom: 20px;
    }
    input {
        width: 90%;
        padding: 10px;
        margin: 8px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 16px;
    }
    input:focus {
        border-color: #007bff;
        outline: none;
    }
    .btn {
        background: #007bff;
        color: white;
        padding: 12px;
        width: 100%;
        border: none;
        border-radius: 5px;
        font-size: 18px;
        cursor: pointer;
        transition: 0.3s;
    }
    .btn:hover {
        background: #0056b3;
    }
</style>
</head>
<body>
    <div class="container">
        <h2>Enter Car Details</h2>
        <form action="add-car" method="post">
            <input type="number" placeholder="Enter Car Id" name="carId" required><br>
            <input type="text" placeholder="Enter Car Model" name="carModel" required><br>
            <input type="text" placeholder="Enter Car Brand" name="carBrand" required><br>
            <input type="text" placeholder="Enter Car Colour" name="carColour" required><br>
            <input type="number" placeholder="Enter Car Price" name="carPrice" required><br>
            <input type="submit" value=" Add Car" class="btn">
        </form>
    </div>
</body>
</html>
