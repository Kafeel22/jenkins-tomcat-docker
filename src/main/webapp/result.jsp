<html>
<head>
    <title>Result</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #e0f7fa;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background-color: #ffffff;
            border-radius: 12px;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.2);
            padding: 40px;
            width: 350px;
            text-align: center;
        }
        h2 {
            color: #00796b;
            font-size: 28px;
            margin-bottom: 20px;
        }
        p {
            font-size: 26px;
            color: #d32f2f;
            font-weight: 600;
            margin-top: 20px;
        }
        .icon {
            width: 60px;
            height: 60px;
        }
        .result-icon {
            margin: 25px 0;
        }
        a {
            display: inline-block;
            margin-top: 25px;
            padding: 12px 25px;
            background-color: #0097a7;
            color: #ffffff;
            text-decoration: none;
            border-radius: 30px;
            font-size: 16px;
            font-weight: 500;
            transition: transform 0.3s ease, background-color 0.3s ease;
        }
        a:hover {
            background-color: #00796b;
            transform: scale(1.05);
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Calculation Result</h2>
        <div class="result-icon">
            <img src="calculator_icon.svg" alt="Calculator Icon" class="icon" />
        </div>
        <p>The result is: ${result}</p>
        <a href="index.jsp">Back to Calculator</a>
    </div>
</body>
</html>
