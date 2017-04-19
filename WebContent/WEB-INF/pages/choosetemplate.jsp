<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="usecaseApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Choose Template</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="bootstrap-theme/css/font-awesome.min.css" rel="stylesheet">
<link href="bootstrap-theme/css/style.css" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

</head>
<body>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">Collaborative Design Tool</a>
		</div>
		<ul class="nav navbar-nav">
			<li><a href="viewprojectlist" onclick="parentNode.submit();">Home</a></li>
			<li><a href="#">Profile</a></li>
			<li><a href="#">Features</a></li>
			<li><a href="#">Explore</a></li>
		</ul>
		<form class="navbar-form navbar-right" action="logout" method="POST">
			<button type="submit" class="btn btn-default">
				<span class="glyphicon glyphicon-log-out"></span> Logout
			</button>
		</form>
	</div>
	</nav>
	<div class="container-fluid" ng-controller="templatecontroller">
		<div class="row">
			<div class="col-xs-6 col-xs-offset-3">
				<h1 style="font-family: Arial; font-style: bold">Create Project</h1>
				<br>
				<br>
				<div class="inactive well well-md col-xs-3 ">
					<i class="fa fa-pencil" aria-hidden="true"></i> Description
				</div>
				<div class="now-active well well-md
                col-xs-3 ">
					<i class="fa fa-file-text-o" aria-hidden="true"></i> Use Case
					Template
				</div>
				<div class="inactive well well-md
                col-xs-3 ">
					<i class="fa fa-users" aria-hidden="true"></i> Team
				</div>
				<div class="inactive well well-md
                col-xs-3 ">
					<i class="fa fa-check-square-o" aria-hidden="true"></i> Policy
				</div>
				<h3 class="alloc style="font-family:Arial; margin:50px">Select
					Use Case Template</h3>


				<div class="radio-inline">
					<label class="form-check-label"> <input
						class="form-check-input" type="radio" name="usecasetemplate"
						value="usecasetemplate1" ng-model="customizeusecase"> <a
						href="viewtemplate" onclick="parentNode.submit();">Template 1</a>
					</label>
				</div>
				<div class="radio-inline">
					<label class="form-check-label"> <input
						class="form-check-input" type="radio" name="usecasetemplate"
						id="inlineRadio2" value="usecasetemplate2"
						ng-model="customizeusecase"> <a href="" value>Template 2</a>
					</label>
				</div>

				<form action="customizetemplate" method="GET">
				
					<a class="btn btn-md btn-block "
						style="background: black; margin-top: 10px; color: white"
						value="customizeusecase" ng-hide="customizeusecase">Customize
						Use case Template</a>
				</form>
				<form action="addroles" method="POST">
					<input type="hidden" name="usecasetemplate" />
					<button type="submit" class="btn btn-md btn-block "
						style="background: black; margin-top: 10px; color: white"
						name="submit" value="Next">Add Collaborators</button>
				</form>
			</div>
		</div>
	</div>
	<script>
      </script>
</body>