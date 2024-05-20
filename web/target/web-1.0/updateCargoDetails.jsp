<%@ page import="com.zaviron.ejb.entity.Cargo" %><%--
  Created by IntelliJ IDEA.
  User: Notebook
  Date: 5/14/2024
  Time: 11:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update Cargo Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
        }
        .container {
            background: #fff;
            padding: 20px 40px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            width: 400px;
            max-width: 100%;
        }
        h1 {
            text-align: center;
            color: #333;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        label {
            margin-bottom: 5px;
            font-weight: bold;
        }
        input[type="text"] {
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            width: 100%;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #007BFF;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Update Cargo Details</h1>
    <%
        Cargo cargo = (Cargo) request.getAttribute("cargo");
    %>
    <form action="updateCargo" method="post">
        <label for="id">Cargo Id</label>
        <input type="text" id="id" name="id" value="<%= cargo.getId() %>" readonly>

        <label for="currentLocation">Current Location</label>
        <input type="text" id="currentLocation" name="currentLocation" value="<%= cargo.getCurrentLocation() %>" required>

        <label for="destinationLocation">Destination Location</label>
        <input type="text" id="destinationLocation" name="destinationLocation" value="<%= cargo.getDestinationLocation() %>" required>

        <label for="originLocation">Origin Location</label>
        <input type="text" id="originLocation" name="originLocation" value="<%= cargo.getOriginLocation() %>" required>

        <label for="details">Details</label>
        <input type="text" id="details" name="details" value="<%= cargo.getDetails() %>" required>

        <label for="status">Status</label>
        <input type="text" id="status" name="status" value="<%= cargo.getStatus() %>" required>

        <input type="submit" value="Update Cargo">
    </form>
</div>
</body>
</html>
