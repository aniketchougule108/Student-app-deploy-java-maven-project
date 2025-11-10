<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Admission Form</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(to right, #2c3e50, #4ca1af);
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        color: white;
    }

    .container {
        background: rgba(255, 255, 255, 0.12);
        backdrop-filter: blur(10px);
        padding: 30px 40px;
        width: 420px;
        border-radius: 12px;
        box-shadow: 0 0 20px rgba(0,0,0,0.3);
        text-align: center;
        color: #fff;
    }

    h1, h2 {
        margin: 8px 0;
    }

    table {
        width: 100%;
        margin-top: 15px;
    }

    td {
        padding: 10px 0;
        text-align: left;
        font-size: 15px;
    }

    input[type="text"] {
        width: 95%;
        padding: 8px;
        border: none;
        border-radius: 6px;
        outline: none;
    }

    input[type="submit"] {
        background: #00e6b8;
        width: 100%;
        padding: 10px;
        border: none;
        border-radius: 6px;
        margin-top: 15px;
        font-size: 16px;
        cursor: pointer;
        font-weight: bold;
        transition: 0.3s;
    }

    input[type="submit"]:hover {
        background: #00c49f;
    }

</style>
</head>

<body>
    <div class="container">
        <h1>Fortune Cloud Team</h1>
        <h2>Welcomes You!!</h2>
        <h2>Student Admission Form</h2>

        <form action="registrationController" method="post">
            <table>
                <tr>
                    <td>Student Name</td>
                    <td><input type="text" name="fullname" required/></td>
                </tr>
                <tr>
                    <td>Student Address</td>
                    <td><input type="text" name="address" required/></td>
                </tr>
                <tr>
                    <td>Student Age</td>
                    <td><input type="text" name="age" required/></td>
                </tr>
                <tr>
                    <td>Student Qualification</td>
                    <td><input type="text" name="qual" required/></td>
                </tr>
                <tr>
                    <td>Student Percentage</td>
                    <td><input type="text" name="percent" required/></td>
                </tr>
                <tr>
                    <td>Year Passed</td>
                    <td><input type="text" name="yop" required/></td>
                </tr>
            </table>
            <input type="submit" value="Submit Admission"/>
        </form>
    </div>
</body>
</html>
