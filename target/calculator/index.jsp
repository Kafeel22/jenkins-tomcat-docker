<html>
<head>
    <title>Kafeel's Calculator</title>
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
            width: 400px;
            text-align: center;
        }
        h2 {
            color: #00796b;
            font-size: 28px;
            margin-bottom: 25px;
        }
        .input-group {
            margin-bottom: 20px;
        }
        input[type="text"], select {
            padding: 12px;
            width: 100%;
            border: 2px solid #ccc;
            border-radius: 8px;
            font-size: 18px;
            box-sizing: border-box;
            margin-bottom: 20px;
            transition: border-color 0.3s ease;
        }
        input[type="text"]:focus, select:focus {
            border-color: #00796b;
        }
        input[type="submit"] {
            padding: 12px 25px;
            background-color: #0097a7;
            color: #ffffff;
            border: none;
            border-radius: 30px;
            font-size: 18px;
            cursor: pointer;
            transition: transform 0.3s ease, background-color 0.3s ease;
        }
        input[type="submit"]:hover {
            background-color: #00796b;
            transform: scale(1.05);
        }
        .calculator-icon {
            margin-bottom: 30px;
        }
        .calculator-icon img {
            width: 80px;
            height: 80px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="calculator-icon">
            <img src="./calculator_icon.svg" alt="Calculator Icon" />
        </div>
        <h2>Simple Calculator</h2>
        <form action="calculate" method="post">
            <div class="input-group">
                <input type="text" name="num1" placeholder="First Number" required />
            </div>
            <div class="input-group">
                <select name="operation">
                    <option value="add">+</option>
                    <option value="subtract">-</option>
                    <option value="multiply">*</option>
                    <option value="divide">/</option>
                </select>
            </div>
            <div class="input-group">
                <input type="text" name="num2" placeholder="Second Number" required />
            </div>
            <input type="submit" value="Calculate" />
        </form>
    </div>
</body>
</html>
