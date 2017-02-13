<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Project Profile</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="bootstrap-theme/css/style.css" rel="stylesheet">


</head>
<body>
	<div class="jumbotron">
  		<div class="container">
    		<h2 class="jumboHeading"><i>Collaborative Design Tool</i></h2><p class="jumboHeading"><i>An awesome way to structure the UseCases for your project</i></p>
  		</div>
	</div>
	<div class="container">
		<h1>My Projects</h1>
		<c:forEach items="${projectdetails}" var="list">

			<div class="wrap-panels panel-group" id="accordion">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a data-toggle="collapse" data-parent="#accordion"
								href="#collapse1" class="jumboHeading">${list.project.name}</a>
						</h4>
					</div>
					<div id="collapse1" class="panel-collapse collapse">
						<div class="panel-body">

							<dl class="dl-horizontal">

								<dt>project Description</dt>
								<dd>${list.project.description}</dd>
								<dt>Owner</dt>
								<dd>${list.project.created_by}</dd>
								<dt>Use Case Template</dt>
								<dd>${list.project.use_case_template}</dd>
								<dt>Policy Name</dt>
								<dd>${list.project.policy_name}</dd>


								<dd>
									<table>
										<tr>
											<th>Role</th>
											<th>Members</th>
										</tr>
										<tr>
											<td>Development Managers</td>
											<td><c:forEach items="${list.devMgrs}" var="devlist">${devlist} </c:forEach></td>
										</tr>
										<tr>
											<td>Solution Managers</td>
											<td><c:forEach items="${list.solnMgrs}" var="slnlist">${slnlist} </c:forEach></td>
										</tr>
										<tr>
											<td>Architects</td>
											<td><c:forEach items="${list.architects}" var="arlist">${arlist} </c:forEach></td>
										</tr>
										<tr>
											<td>QA</td>
											<td><c:forEach items="${list.qa}" var="qalist">${qalist} </c:forEach></td>
										</tr>
									</table>

								</dd>
							</dl>


							<form action="" method="">
								<input type="submit" name="" value="Add Usecase" />
							</form>
						</div>
					</div>
				</div>
				<div>
					<form action="redirect" method="get">
						<button type="submit" name="button"
							class="btn-add btn-danger btn-lg btn-block">
							<b>Create new project</b> <i class="glyphicon glyphicon-plus"></i>
						</button>
					</form>
				</div>
			</div>

		</c:forEach>
	</div>

</body>
</html>
