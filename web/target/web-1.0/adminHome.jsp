<%--
  Created by IntelliJ IDEA.
  User: Notebook
  Date: 5/11/2024
  Time: 8:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin</title>
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
            height: 100vh;
        }
        .container {
            background: #fff;
            padding: 20px 40px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            width: 400px;
            max-width: 100%;
        }
        h1, h2 {
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
        a {
            display: inline-block;
            margin-top: 20px;
            color: #007BFF;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Admin Home</h1>
    <h2>Add Cargo</h2>
    <form action="addCargo" method="post">
        <label for="currentLocation">Current Location</label>
        <input type="text" id="currentLocation" name="currentLocation" required>

        <label for="destinationLocation">Destination Location</label>
        <input type="text" id="destinationLocation" name="destinationLocation" required>

        <label for="originLocation">Origin Location</label>
        <input type="text" id="originLocation" name="originLocation" required>

        <label for="details">Details</label>
        <input type="text" id="details" name="details" required>

        <label for="status">Status</label>
        <input type="text" id="status" name="status" required>

        <input type="submit" value="Add Cargo">
    </form>
    <a href="viewCargo">View Cargo</a>
</div>
</body>
</html>
