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
		<form action="login" method="POST">
			<h2>${msg}</h2>
			<b>PLEASE LOGIN !</b>
			<table>
				<tr>
					<td>Email ID:</td>
					<td><input type="text" name="emailID" /></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type="password" name="password" /></td>
				</tr>
				<tr>
					<td>role:</td>
					<td><input type="radio" name="role" value="designer" checked/>Designer<br>
					<input type="radio" name="role" value="solution-manager"/>Solution Manager<br>
					<input type="radio" name="role" value="architect"/>Architect<br>
					<input type="radio" name="role" value="development-manager"/>Development Manager<br>
					<input type="radio" name="role" value="qa"/>QA</td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" name="login" value="Login" /></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>