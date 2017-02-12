<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login</title>
<link href="bootstrap-theme/css/bootstrap.min.css" rel="stylesheet">
<link href="bootstrap-theme/css/bootstrap-theme.min.css"
	rel="stylesheet">
<script type="text/javascript" src="bootstrap-theme/js/bootstrap.min.js"€></script>
<link href="bootstrap-theme/css/style.css" rel="stylesheet">

</head>
<body>
	<div class="container">
		<div class="row">
			<div class="wrap-login col-md-4 col-md-offset-4">
				<form action="login" method="POST">

					<div class="form-group">
						<h2>${msg}</h2>
						<label for="exampleInputEmail1">Email address</label> <input
							type="text" name="email" class="form-control" />
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Password</label> <input
							type="password" name="password" class="form-control" />
					</div>
					<div class="form-group">
						<label for="InputRole">Role</label>
						<div class="radio">
							<label> <input type="radio" name="role" value="designer"
								checked /> Designer
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" name="role"
								value="solution-manager" /> Solution Manager
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" name="role" value="architect" />
								Architect
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" name="role"
								value="development-manager" /> Development Manager
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" name="role" value="qa" /> QA
							</label>
						</div>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox"> Remember Me
						</label>
					</div>
					<input type="submit" name="login" value="Login"
						class="btn-login btn btn-warning btn-block" />
				</form>
			</div>
		</div>
	</div>
</body>
</html>
