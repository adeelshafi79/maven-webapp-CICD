<!DOCTYPE html>
<html>
<head>
    <title>WAR Web Service</title>
    <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">
    <style>
        body {
            font-family: 'Lobster', cursive;
            text-align: center;
            background-color: #f2f2f2;
        }
        h1 {
            color: #333;
        }
        .button {
            display: inline-block;
            padding: 10px 20px;
            margin: 10px;
            font-size: 18px;
            text-align: center;
            text-decoration: none;
            color: #fff;
            background-color: #007bff;
            border: 2px solid #007bff;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .button:hover {
            background-color: #0056b3;
        }
        ul {
            list-style-type: none;
            padding: 0;
        }
        li {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <h1>WAR Web Service</h1>
    <ul>
        <li><a href="http://localhost:8080/wwp-1.0.0/webapi/service" class="button">Service</a></li>
        <li><a href="http://localhost:8080/wwp-1.0.0/webapi/service/hello" class="button">Hello</a></li>
        <li><a href="http://localhost:8080/wwp-1.0.0/webapi/service/time" class="button">Time</a></li>
        <li><a href="http://localhost:8080/wwp-1.0.0/webapi/service/send" class="button">Send</a> (Accessible using POST)</li>
        <li><a href="http://localhost:8080/wwp-1.0.0/webapi/service/send/rowan" class="button">Send to Rowan</a> (Accessible using POST)</li>
    </ul>
</body>
</html>
