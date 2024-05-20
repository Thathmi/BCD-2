<%--
  Created by IntelliJ IDEA.
  User: Notebook
  Date: 5/10/2024
  Time: 10:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Home</title>
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
            text-align: center;
        }
        h1 {
            color: #333;
        }
        table {
            width: 100%;
            margin-top: 20px;
        }
        th, td {
            padding: 12px;
            text-align: left;
        }
        input[type="text"] {
            padding: 10px;
            margin-right: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            width: calc(100% - 22px); /* account for padding and border */
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
    <h1>Hello, ${sessionScope.email}</h1>
    <h1 id="details"></h1>
    <table>
        <tr>
            <th>Tracking Number</th>
            <td><input id="tracking" type="text" name="tracking"/></td>
            <td><input onclick="realTimeTracking()" type="submit" value="Track"/></td>
        </tr>
    </table>
</div>
<script>
    function realTimeTracking() {
        let id = document.getElementById("tracking").value;
        let details = document.getElementById("details");
        const request = new XMLHttpRequest();
        request.onreadystatechange = function () {
            if (request.readyState == 4 && request.status == 200) {
                let text = request.responseText;
                details.innerText = text;
                setTimeout(realTimeTracking, 1000);
            }
        };
        request.open("GET", "http://localhost:8080/web/tracking?tracking=" + id, true);
        request.send();
    }
</script>
</body>
</html>
