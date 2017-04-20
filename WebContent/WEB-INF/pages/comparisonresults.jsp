<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Previous Versions</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="bootstrap-theme/css/font-awesome.min.css" rel="stylesheet">
<link href="bootstrap-theme/css/style.css" rel="stylesheet">
<style>
.nav-link {
	color: black;
}
</style>
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
	<div class="container-fluid">
		<div class="row">
			<div class=" col-xs-8 col-xs-offset-2">
				<h3 class="alloc style="font-family:Arial; margin:50px">Comparison
					Results</h3>
				<table class="table table-bordered" style="margin-top: 5px">
					<thead>
						<tr>
							<th>Field</th>
							<th>Changes</th>

						</tr>
					</thead>
					<tbody>
						<c:forEach items="${list}" var="item" varStatus="loop">
							<tr>
								<td>${item.field}</td>

								<td><c:choose>
										<c:when test="${(item.equal) == 'false' }">
											<span class="bg-success">${item.additions}</span>
											<span class="bg-danger">${item.deletions}</span>
										</c:when>
										<c:otherwise>
											<span class="">${item.additions}</span>

										</c:otherwise>
									</c:choose></td>



							</tr>
						</c:forEach>

					
				<tr>
					</tbody>
				</table>
					<span class ="bg-success"><b>Additions after Comparison</b></span><br>
					<span class="bg-danger"><b>Deletions after comparison</b></span>
			</div>
		</div>
	</div>
</body>
</html>
