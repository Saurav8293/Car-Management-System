<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Car Details</title>
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
        width: 50%;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        border-radius: 10px;
        text-align: center;
    }
    h2 {
        color: #333;
        margin-bottom: 20px;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 20px;
    }
    th, td {
        padding: 10px;
        border: 1px solid #ddd;
        text-align: center;
    }
    input {
        width: 90%;
        padding: 8px;
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
        width: 50%;
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
        <h2> Update Car Details </h2>
        <%
            ResultSet rs = (ResultSet) request.getAttribute("resultset");
            rs.next();
        %>
        <form action="update-car" method="post">
            <table>
                <tr>
                    <th>Car Id</th>
                    <th>Model</th>
                    <th>Brand</th>
                    <th>Color</th>
                    <th>Price</th>
                </tr>
                <tr>
                    <td><input type="number" name="carId" value="<%=rs.getInt(1)%>" readonly></td>
                    <td><input type="text" name="carModel" value="<%=rs.getString(2)%>"></td>
                    <td><input type="text" name="carBrand" value="<%=rs.getString(3)%>"></td>
                    <td><input type="text" name="carColor" value="<%=rs.getString(4)%>"></td>
                    <td><input type="number" name="carPrice" value="<%=rs.getInt(5)%>"></td>
                </tr>
            </table>
            <input type="submit" value=" Update Car" class="btn">
        </form>
    </div>
</body>
</html>
