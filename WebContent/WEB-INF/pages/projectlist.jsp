<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Project Profile</title>
<style>
body{
	background-color: #00ffbf;
}
</style>
</head>
<body>

	<table>
		<tr>
			<th>Project Name</th>
			<th>Description</th>
			<th>Total Usecases</th>
		</tr>
		<c:forEach items="${currentUser.projectdetails}" var="item">
			<tr>
				<td>${item.name}</td>
				<td>${item.description}</td>
				<td>${item.totalusecases}</td>
			</tr>
		</c:forEach>

	</table>
	<form action="createproject" method="get">
		<input type="submit" name="submit" value="Create New Project">
	</form>
</body>
</html>