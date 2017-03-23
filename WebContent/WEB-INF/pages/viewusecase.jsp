<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Use Case Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="bootstrap-theme/css/font-awesome.min.css" rel="stylesheet">
<link href="bootstrap-theme/css/style.css" rel="stylesheet">
<script src="jquery-3.1.1.min.js"></script>

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
			<div class="col-xs-10 col-xs-offset-1">
				<form action="viewusecase" method="GET">
					<div class="panel panel-default">
						<div class="panel-heading">
							Active Use Cases for Project ${projectname} <span class="badge">
								<c:choose>
									<c:when
										test="${(fn:length(criticalList) gt 0) && (fn:length(activeList) gt 0)}">${(fn:length(criticalList)+fn:length(activeList))}</c:when>
									<c:when
										test="${(fn:length(activeList) gt 0)}">${fn:length(activeList)}</c:when>
									<c:when
										test="${(fn:length(criticalList) gt 0)}">${fn:length(criticalList)}</c:when>
									<c:otherwise>0</c:otherwise>
								</c:choose>
							</span>
						</div>
						<div class="panel-body">
							<div class="table-responsive table-bordered">
								<table class="table">
									<thead>
										<tr>
											<th>#</th>
											<th>ID</th>
											<th>Last Updated</th>
											<th>Status</th>
											<th>Select</th>
										</tr>
									</thead>
									<tbody>
										<c:set var="loopindex" value="${0}" />
										<c:forEach items="${criticalList}" var="list1"
											varStatus="loop1">
											<tr class="danger">
												<td>${loop1.index+1}</td>
												<td>${list1.useCaseID}</td>
												<td>${list1.last_updated}</td>
												<td>${list1.status}</td>
												<td><input class="form-check-input" type="radio"
													name="usecaseid" value="${list1.useCaseID}"></td>
											</tr>
											<c:set var="loopindex" value="${loop1.index}" />
										</c:forEach>
										<c:forEach items="${activeList}" var="list2" varStatus="loop2">
											<tr>
												<td>${(loopindex) + (loop2.index)+1}</td>
												<td>${list2.useCaseID}</td>
												<td>${list2.last_updated}</td>
												<td>${list2.status}</td>
												<td><input class="form-check-input" type="radio"
													name="usecaseid" value="${list2.useCaseID}"></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<input type="hidden" name="editstatus" value="true" id="editstatus">
					<button class="btn btn-primary btn-md btn-block" name="" id="">View Selected Use Case</button>
					</form>
					<form action="viewusecase" method="GET">
					<div class="panel panel-default">
						<div class="panel-heading">
							In-Active Use Cases for Project ${projectname} 
							<span class="badge"> 
								<c:choose>
									<c:when test="${fn:length(inActiveList) gt 0}">${fn:length(inActiveList)}</c:when>
									<c:otherwise>0</c:otherwise>
								</c:choose>
							</span>
						</div>
						<div class="panel-body">
							<div class="table-responsive table-bordered">
								<table class="table">
									<thead>
										<tr>
											<th>#</th>
											<th>ID</th>
											<th>Last Updated</th>
											<th>Status</th>
											<th>Select</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${inActiveList}" var="list3" varStatus="loop3">
											<tr>
												<td>${loop3.index+1}</td>
												<td>${list3.useCaseID}</td>
												<td>${list3.last_updated}</td>
												<td>${list3.status}</td>
												<td><input class="form-check-input" type="radio"
													name="usecaseid" value="${list3.useCaseID}"></td>
											</tr>
										</c:forEach>										
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<input type="hidden" name="editstatus" value="false" id="editstatus">
					<button class="btn btn-primary btn-md btn-block" name="" id="">View Selected Use Case</button>
				</form>
			</div>

		</div>
	</div>
</body>
</html>