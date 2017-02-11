<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Collaborators Page</title>
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
		<form action="login" method="POST">
			<h2>${msg}</h2>
			<b>Collaborators</b>
			<table>
				<tr>
					<td>Development Manager</td>
					<td><input type="text" name="dm" /></td>
					<td><input type="number" name="duration"></td>
				</tr>
				<tr>
					<td>Solution Manager</td>
					<td><input type="text" name="sm" /></td>
					<td><input type="number" name="duration"></td>
				</tr>
				<tr>
					<td>Architect</td>
					<td><input type="text" name="ar" /></td>
					<td><input type="number" name="duration"></td>
				</tr>
				<tr>
					<td>QA</td>
					<td><input type="text" name="qa" /></td>
					<td><input type="number" name="duration"></td>
				</tr>
				
				
				<tr>
					<td colspan="2"><input type="submit" name="Next" value="Add roles" /></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>