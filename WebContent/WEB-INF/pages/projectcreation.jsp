<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Project Creation Page</title>
<style>
body{
	background-color: #00ffbf;
}
</style>
</head>
<body>

<form action="create" method="POST">
	<table>
	<tr><td>Project Name:</td>
		<td><input type="text" name="name" /></td>
	</tr>
	<tr><td>Project Description:</td>
		<td><input type="text" name="description"/></td>
	</tr>	
	<tr><td colspan="2"><input type="submit" name="create" value="Next" /></td></tr>	
	</table>
</form>
</body>
</html>