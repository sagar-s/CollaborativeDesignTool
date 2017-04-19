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
td {
    padding-top: .5em;
    padding-bottom: .5em;
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
			<b>Template:</b><br>
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
					<td>Intent:</td>
					<td><input type="text" name="intent" /></td>
				</tr>
				<tr>
					<td>Scope:</td>
					<td><input type="text" name="overview" /></td>
				</tr>
				<tr>
					<td>Level:</td>
					<td><input type="text" name="level" /></td>
				</tr>
				<tr>
					<td>Upload Diagram:</td>
					<td><input type="file" name="file" size="50" /></td>
				</tr>
				<tr>
					<td>Description:</td>
					<td><input type="text" name="description" /></td>
				</tr>
				<tr>
					<td>Primary Actor:</td>
					<td><input type="text" name="primary actor" /></td>
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
					<td><label><input type="radio" name="status" id="open"
									value="open">Open</label><br>
						<label><input type="radio" name="status" id="pending-review"
									value="pending review">Pending Review</label><br>
						<label><input type="radio" name="status" id="closed"
									value="closed">Closed</label><br>
					</td>					
				</tr>
				<tr>
					<td>Owner:</td>
					<td><input type="text" name="owner" /></td>
				</tr>
				<tr>
					<td>Priority:</td>
					<td><label><input type="radio" name="priority" id="p1-critical"
									value="p1-critical" checked>P1-Critical</label><br>
						<label><input type="radio" name="priority" id="p2-high"
									value="p2-high">P2-High</label><br>
						<label><input type="radio" name="priority" id="p3-medium"
									value="p3-medium">P3-Medium</label><br>
						<label><input type="radio" name="priority" id="p4-low"
									value="p4-low">P4-Low</label>
					</td>
				</tr>
				</table>
		</form>
	</div>
</body>
</html>