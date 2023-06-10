<%@page import="mvc.dto.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Result</title>
</head>
<body>
<h1 style="color:green">${success }</h1>
<table border="1">
<tr>
<th>ID</th><th>Name</th><th>Email</th><th>Mobile</th><th>Gender</th><th>DoB</th><th>Age</th><th>Delete</th><th>Edit</th>
</tr>

<c:forEach var="s" items="${list}">

<tr>
<th>${s.getId()}</th><th>${s.getName()}</th><th>${s.getEmail()}</th><th>${s.getMobile()}</th><th>${s.getGender()}</th><th>${s.getDob()}</th><th>${s.getAge()}</th><th><a href="delete?id=${s.getId()}"><button>Delete</button></a></th><th><a href="edit?id=${s.getId()}"><button>Edit</button></a></th>
</tr>

</c:forEach>

</table>
</body>
</html>