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
    <button class="button" onclick="fetchData()">Fetch Vehicle Data</button>

    <script>
        async function fetchData() {
            const settings = {
                method: 'GET',
                headers: {
                    'X-RapidAPI-Key': 'a242de4503msh242d8070e0f34d9p1d7db7jsn0e6c3a02e8fa',
                    'X-RapidAPI-Host': 'global-automotives-cloud.p.rapidapi.com'
                }
            };

            try {
                const response = await fetch('https://global-automotives-cloud.p.rapidapi.com/vehicle?country_code=fr&registration_no=Eg258ma', settings);
                const data = await response.json();
                console.log(data);
                // You can process the response data here
            } catch (error) {
                console.error('Error:', error);
            }
        }
    </script>
</body>
</html>
