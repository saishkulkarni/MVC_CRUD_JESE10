<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Save Data</title>
</head>
<body>
<form action="save" method="post">
Name: <input type="text" name="name"><br>
Email: <input type="email" name="email"><br>
Password: <input type="password" name="password"><br>
Mobile: <input type="tel" pattern="[0-9]{10}" name="mobile"><br>
Gender:
<input type="radio" name="gender" value="male">Male
<input type="radio" name="gender" value="female">Female<br>
DOB:<input type="date" name="date"><br>
<button>Save</button><button type="reset">Cancel</button>
</form>
</body>
</html>