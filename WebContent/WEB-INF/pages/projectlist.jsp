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

<style type="text/css">
td {
	padding: 0 15px 0 15px;
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
			<li class="active"><a href="#">Home</a></li>
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
	<div class="container">
		<h1>My Projects</h1>


		<c:forEach items="${projectdetails}" var="list" varStatus="loop">

			<div class="wrap-panels panel-group" id="accordion">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a data-toggle="collapse" data-parent="#accordion"
								href="#collapse${loop.index}" class="jumboHeading">${list.project.name}</a>
						</h4>
					</div>
					<div id="collapse${loop.index}" class="panel-collapse collapse">
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
											<td><c:forEach items="${list.devMgrs}" var="devlist" varStatus="loop1">${devlist} <c:if test="${!loop1.last}">, </c:if></c:forEach></td>
										</tr>
										<tr>
											<td>Solution Managers</td>
											<td><c:forEach items="${list.solnMgrs}" var="slnlist" varStatus="loop2">${slnlist} <c:if test="${!loop2.last}">, </c:if></c:forEach></td>
										</tr>
										<tr>
											<td>Architects</td>
											<td><c:forEach items="${list.architects}" var="arlist" varStatus="loop3">${arlist} <c:if test="${!loop3.last}">, </c:if></c:forEach></td>
										</tr>
										<tr>
											<td>QA</td>
											<td><c:forEach items="${list.qa}" var="qalist" varStatus="loop4">${qalist}<c:if test="${!loop4.last}">, </c:if> </c:forEach></td>
										</tr>
									</table>

								</dd>
							</dl>
							<table>
								<tr>
									<%
										if ("designer".equals((String) session.getAttribute("userrole"))) {
									%>

									<td>
										<form action="redirecttotemplate" method="GET">
											<input type="hidden" name="projectname" value="${list.project.name}">
											<input type="hidden" name="template" value="${list.project.use_case_template}">
											<input type="submit" value="Create Use Case" />
										</form>

									</td>
									<%
										}
									%>
									<td></td>


									<td>
										<form action="viewusecaselist" method="GET">
											<input type="hidden" name="projectname" value="${list.project.name}">
											<input type="submit" value="View Use Cases" />
										</form>
									</td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
		<div>

			<%
				if ("designer".equals((String) session.getAttribute("userrole"))) {
			%>
			<form action="redirect" method="get">
				<button type="submit" name="button"
					class="btn btn-add btn-danger btn-lg btn-block">
					<b>Create new project</b> <i class="glyphicon glyphicon-plus"></i>
				</button>
			</form>
			<%
				}
			%>
		</div>
	</div>




</body>
</html>
