<%@ page import="java.util.List" %>
<%@ page import="com.zaviron.ejb.entity.Cargo" %><%--
  Created by IntelliJ IDEA.
  User: Notebook
  Date: 5/14/2024
  Time: 5:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Cargo Details</title>
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
      width: 80%;
      max-width: 1000px;
      margin: 20px;
    }
    h1 {
      color: #333;
      text-align: center;
    }
    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 20px;
    }
    th, td {
      padding: 12px;
      text-align: left;
      border-bottom: 1px solid #ddd;
    }
    th {
      background-color: #007BFF;
      color: white;
    }
    tr:nth-child(even) {
      background-color: #f2f2f2;
    }
    a {
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
  <h1>Cargo Details</h1>
  <%
    List<Cargo> cargo = (List<Cargo>) request.getAttribute("cargoList");
  %>
  <table>
    <thead>
    <tr>
      <th>ID</th>
      <th>Current Location</th>
      <th>Destination Location</th>
      <th>Origin Location</th>
      <th>Details</th>
      <th>Status</th>
      <th>Update Details</th>
    </tr>
    </thead>
    <tbody>
    <% if (cargo != null) {
      for (Cargo cargoItem : cargo) { %>
    <tr>
      <td><%= cargoItem.getId() %></td>
      <td><%= cargoItem.getCurrentLocation() %></td>
      <td><%= cargoItem.getDestinationLocation() %></td>
      <td><%= cargoItem.getOriginLocation() %></td>
      <td><%= cargoItem.getDetails() %></td>
      <td><%= cargoItem.getStatus() %></td>
      <td><a href="updateCargo?cargoId=<%= cargoItem.getId() %>">Update Cargo</a></td>
    </tr>
    <% }
    } else { %>
    <tr>
      <td colspan="7">No cargo available</td>
    </tr>
    <% } %>
    </tbody>
  </table>
</div>
</body>
</html>
