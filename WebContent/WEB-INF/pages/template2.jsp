<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
<style>
body {
	background-color: #00ffbf;
}

#login-box {
	width: 300px;
	padding: 20px;
	margin: 100px auto;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	border: None;
}
</style>
</head>
<body>
	<div id="login-box">
		<form action="collaborators" method="POST">
			
			<b>Template:</b>
			<table>
				<tr>
					<td>Introduction:</td>
					<td><input type="text" name="introduction" /></td>
				</tr>
				<tr>
					<td>Overview:</td>
					<td><input type="text" name="overview" /></td>
				</tr>
				<tr>
					<td>Uplaod Diagram:</td>
					<td><input type="file" name="file" size="50" /></td>
				</tr>
				<tr>
					<td>Actors:</td>
					<td><input type="text" name="actors" /></td>
				</tr>
				<tr>
					<td>Use Cases:</td>
					<td><input type="text" name="usecases" /></td>
				</tr>
				<tr>
					<td>Status:</td>
					<td><input type="text" name="status" /></td>
				</tr>
				<tr>
					<td>Owner:</td>
					<td><input type="text" name="owner" /></td>
				</tr>
				<tr>
					<td>Priority:</td>
					<td><input type="text" name="priority" /></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" name="Next" value="Add Collaborators" /></td>
				</tr>
				</table>
		</form>
	</div>
</body>
</html>