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
			<h2>${msg}</h2>
			<b>Template:</b>
			<table>
				<tr>
					<td>ID:</td>
					<td><input type="text" name="ID" /></td>
				</tr>
				<tr>
					<td>Title:</td>
					<td><input type="text" name="title" /></td>
				</tr>
				<tr>
					<td>Description:</td>
					<td><input type="text" name="description" /></td>
				</tr>
				<tr>
					<td>Pre-conditions:</td>
					<td><input type="text" name="preconditions" /></td>
				</tr>
				<tr>
					<td>Post-conditions:</td>
					<td><input type="text" name="postconditions" /></td>
				</tr>
				<tr>
					<td>Frequency of Use:</td>
					<td><input type="text" name="frequency" /></td>
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