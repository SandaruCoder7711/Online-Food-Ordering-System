<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html lang="en">
<head>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delivery Form</title>
    <style>
    
    
    
    	body {
    	    width: 100vw;
    	    height: 100vh;
    	    display: flex;
    	    justify-content: center;
    	    align-items: center;
    	    background-image: url('${pageContext.request.contextPath}/image/bbc.jpg'); 
            background-position: center;
    	    
    	    
    	}
       .container {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 400px;
        }
        body {
            font-family: Arial, sans-serif;
            background-color:#8B4513;
          
        }

        h1 {
            color: #333;
        }

        form {
            max-width: 600px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 8px;
        }

        input[type="text"], input[type="time"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        .back-link {
            display: block;
            margin-top: 20px;
            color: #007bff;
            text-decoration: none;
        }

        .back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Add Delivery</h1>
    <form action="insert" method="post" onsubmit="return validateForm()">
    
    <input type="hidden" name="id" value="${service.id}">
    
    <label for="drivernum">Driver Number (D###):</label>
    <input type="text" id="drivernum" name="drivernum" value="${service.drivernum}" pattern="D\d{3}" title="Please enter vehicle number in the format D###" required>
    
    <label for="cusnum">Customer Number (C###):</label>
    <input type="text" id="cusnum" name="cusnum" value="${service.cusnum}" pattern="C\d{3}" title="Please enter customer number in the format C###" required>
    
    <label for="deliverytime">Delivery Time:</label>
    <input type="text" id="deliverytime" name="deliverytime" value="${service.deliverytime}" pattern="([01]\d|2[0-3]):([0-5]\d)" title="Please enter vehicle number in the format HH:MM" required>
    
    <label for="status">Status:</label>
    <input type="text" id="status" name="status" value="${service.status}" required>
    
    <label for="vehiclenum">Vehicle Number (XX####):</label>
    <input type="text" id="vehiclenum" name="vehiclenum" value="${service.vehiclenum}" pattern="[A-Z]{2}\d{4}" title="Please enter vehicle number in the format XX####" required>
    
    <input type="submit" value="Submit">
</form>

    <a class="back-link" href="http://localhost:8090/MobilePhoneStore/">Back to Delivery List</a>
    </div>
    
    <script>
        function validateForm() {
            var cusnum = document.getElementById("cusnum").value;
            var vehiclenum = document.getElementById("vehiclenum").value;
            var drivernum = document.getElementById("drivernum").value;
            var deliverytime = document.getElementById("deliverytime").value;
            
            // Check if cusnum matches pattern
             if (!drivernum.match(/^D\d{3}$/)) {
                alert("Driver number must be in the format D###");
                return false;
            }
            
            if (!cusnum.match(/^C\d{3}$/)) {
                alert("Customer number must be in the format C###");
                return false;
            }
            
            if (!deliverytime.match(/^([01]\d|2[0-3]):([0-5]\d)$/)) {
                alert("Time must be in the format HH:MM");
                return false;
            }
            // Check if vehiclenum matches pattern
            if (!vehiclenum.match(/^[A-Z]{2}\d{4}$/)) {
                alert("Vehicle number must be in the format XX####");
                return false;
            }
            
            return true;
        }
    </script>
</body>
</html>