<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Cars Available</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 20px;
        text-align: center;
    }
    h1 {
        color: #333;
        margin-bottom: 20px;
    }
    table {
        width: 80%;
        margin: 0 auto;
        border-collapse: collapse;
        background: white;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    }
    th, td {
        padding: 12px;
        border: 1px solid #ddd;
        text-align: center;
    }
    th {
        background-color: #007bff;
        color: white;
    }
    tr:nth-child(even) {
        background-color: #f2f2f2;
    }
    tr:hover {
        background-color: #ddd;
    }
    a {
        text-decoration: none;
        color: white;
        padding: 6px 12px;
        border-radius: 5px;
    }
    .update-btn {
        background-color: #28a745;
    }
    .delete-btn {
        background-color: #dc3545;
    }
    .dashboard-link {
        display: inline-block;
        margin-top: 20px;
        font-size: 18px;
        color: #007bff;
        text-decoration: none;
        font-weight: bold;
    }
    .dashboard-link:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
    <h1>Available Cars in the Showroom</h1>
    <%
        ResultSet rs = (ResultSet) request.getAttribute("resultset");
    %>
    <table>
        <tr>
            <th>Car ID</th>
            <th>Model</th>
            <th>Brand</th>
            <th>Color</th>
            <th>Price</th>
            <th>Update</th>
            <th>Delete</th>
        </tr>
        <%
        while (rs.next()) {
        %>
        <tr>
            <td><%= rs.getInt(1) %></td>
            <td><%= rs.getString(2) %></td>
            <td><%= rs.getString(3) %></td>
            <td><%= rs.getString(4) %></td>
            <td><%= rs.getInt(5) %></td>
            <td><a href="update-car?carId=<%= rs.getInt(1) %>" class="update-btn">Update</a></td>
            <td><a href="delete-car?carId=<%= rs.getInt(1) %>" class="delete-btn">Delete</a></td>
        </tr>
        <%
        }
        %>
    </table>
    <a href="index.jsp" class="dashboard-link">Go back to Dashboard</a>
</body>
</html>
