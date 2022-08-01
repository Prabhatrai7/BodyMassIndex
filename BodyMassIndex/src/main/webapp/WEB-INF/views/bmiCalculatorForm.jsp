<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BMI Calculator</title>
</head>
<body>
	<br>
	<br>
	<h1 id="heading">BMI Calculator</h1>
	<table>
	<caption style="font-weight: bolder;">Body Mass Index Calculator Form</caption>
	
	<sf:form action="getBMI" modelAttribute="user" method="GET" name="form">
			<tr>
				<td>Enter Name:</td>
				<td><sf:input path="name" id="name" /> </td>
				<td><sf:errors path="name"></sf:errors></td>
			</tr>
				<tr>
				<td>Phone Number:</td>
				<td><sf:input path="phoneNumber" id="phoneNumber" /> </td>
				<td><sf:errors path="phoneNumber"></sf:errors></td>
			</tr>
				<tr>
				<td>Height in CM:</td>
				<td><sf:input path="height" id="height" /> </td>
				<td><sf:errors path="height"></sf:errors></td>
			</tr>
				
				<tr>
				<td>Weight in KG:</td>
				<td><sf:input path="weight" id="weight" /> </td>
				<td><sf:errors path="weight"></sf:errors></td>
			</tr>
			
			<tr>
				<td>Gender:</td>
				<td><sf:select path="genderType" items="${genderList}" id="genderType" /></td>
			</tr>
			<tr>
				<td><input type="submit" name="calculateBMI" value="CalculateBMI"></td>
				<td><input type="reset" value="Cancel"></td>
			</tr>
		</sf:form>
	</table>
</body>
</html>