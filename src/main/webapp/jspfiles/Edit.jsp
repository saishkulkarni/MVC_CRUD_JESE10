<%@page import="mvc.dto.Student"%>
<%@page import="mvc.dao.StudentDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit</title>
</head>
<body>
<form:form action="update" modelAttribute="student" method="post">
Id:<form:input path="id" readonly="true"/><br>
Name:<form:input path="name"/><br>
Email:<form:input path="email"/><br>
Mobile:<form:input path="mobile"/><br>
Password:<form:input path="password"/><br>
Gender:<form:radiobutton path="gender" value="male"/>Male<form:radiobutton path="gender" value="female"/>Female<br>
Dob:<input name="date" value="${student.getDob()}" ><br>
<button>Update</button><button type="reset">Cancel</button>
</form:form>
</body>
</html>