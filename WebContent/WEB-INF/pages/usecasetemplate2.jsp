<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Use Case Template 2</title>
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
a {
	color: black;
}
</style>
</head>
<body onload="javascript:onLoadBody()">
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
			<div class=" col-xs-6 col-xs-offset-1" style="background: lightgray">

				<form id="usecaseform" method="POST" style="margin: 20px">
					<div class="form-group row">
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a
							href="#" data-toggle="tooltip" data-placement="right"
							title="Unique ID for this use case">ID</a></label>
						<div class="col-10">
							<input class="form-control" type="text" id="useCaseID"
								name="useCaseID" value="${usecase.useCaseID}" required />
						</div>
					</div>

					<div class="form-group row">
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a
							href="#" data-toggle="tooltip" data-placement="right"
							title="A summary statement of the purpose of this use case">Intent</a></label>
						<div class="col-10">
							<input class="form-control" type="text" id="intent" name="intent"
								value="${usecase.intent}">
						</div>
					</div>
					<div class="form-group row">
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a
							href="#" data-toggle="tooltip" data-placement="right"
							title="What is the scope of this use case?">Scope</a></label>
						<div class="col-10">
							<textarea class="form-control" id="scope" name="Scope" rows="5"
								cols="5">${usecase.scope}</textarea>
						</div>
					</div>
					<div class="form-group row">
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a
							href="#" data-toggle="tooltip" data-placement="right"
							title="What level in the system the use case stimuli and response take place?">Level</a></label>
						<div class="col-10">
							<input class="form-control" type="text" id="level" name="level"
								value="${usecase.level}">
						</div>
					</div>
					<div class="form-group row">
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a
							href="#" data-toggle="tooltip" data-placement="right"
							title="A person or software/hardware system that interacts with system to achieve the goal of this use case">Primary
								Actor</a></label>
						<div class="col-10">
							<input class="form-control" type="text" id="primaryActor"
								name="PrimaryActor" value="${usecase.primaryActor}">
						</div>
					</div>
					<div class="form-group row">
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a
							href="#" data-toggle="tooltip" data-placement="right"
							title="Other actors relied upon to accomplish this use case">Secondary
								Actors</a></label>
						<div class="col-10">
							<textarea class="form-control" name="secondaryActors"
								id="secondaryActors" rows="5" cols="5">${usecase.secondaryActors}</textarea>
						</div>
					</div>
					<div class="form-group row">
						<label for="exampleInputFile"><a href="#"
							data-toggle="tooltip" data-placement="right"
							title="Upload any pictures required for this use case">Upload
								Diagram</a></label> <input type="file" class="form-control-file"
							id="diagram" value="image" aria-describedby="fileHelp">

					</div>
					<div class="form-group row">
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a
							href="#" data-toggle="tooltip" data-placement="right"
							title="A list of conditions that must be true before the Use Case starts">Pre-Conditions</a></label>
						<div class="col-10">
							<textarea class="form-control" id="preconditions"
								name="preconditions" rows="5" cols="5">${usecase.preconditions}</textarea>
						</div>
					</div>
					<div class="form-group row">
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a
							href="#" data-toggle="tooltip" data-placement="right"
							title="A list of conditions that must be true when the Use Case ends,
no matter which Scenario is executed.">Post-Conditions</a></label>
						<div class="col-10">
							<textarea class="form-control" id="postconditions"
								name="postconditions" rows="5" cols="5">${usecase.postconditions}</textarea>
						</div>
					</div>
					<div class="form-group row">
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a
							href="#" data-toggle="tooltip" data-placement="right"
							title="Who owns this use case in your project team?">Owner</a></label>
						<div class="col-10">
							<input class="form-control" type="text" id="owner" name="owner"
								value="${(empty usecase.owner) ? useremail : usecase.owner}" readOnly>
						</div>
					</div>
					<div class="form-group row">
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a
							href="#" data-toggle="tooltip" data-placement="right"
							title="What point are we in developing this Use Case?">Status</a></label>
						<div class="col-10">
							<div class="radio">
								<label class="radio-inline"><input type="radio"
									name="status" id="open" value="open"
									>Open</label>
							</div>
							<div class="radio">
								<label class="radio-inline"><input type="radio"
									name="status" id="pending review" value="pending review"
									>Pending
									Review</label>
							</div>
							<div class="radio">
								<label class="radio-inline"><input type="radio"
									name="status" id="closed" value="closed"
									>Closed</label>
							</div>
						</div>
					</div>

					<div class="form-group row">
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a
							href="#" data-toggle="tooltip" data-placement="right"
							title="How important is this use case to this Project?">Priority</a></label>
						<div class="col-10">
							<div class="radio">
								<label><input type="radio" name="priority"
									id="p1-critical" value="p1-critical">P1-Critical</label>
							</div>
							<div class="radio">
								<label><input type="radio" name="priority" id="p2-high"
									value="p2-high">P2-High</label>
							</div>
							<div class="radio">
								<label><input type="radio" name="priority"
									id="p3-medium" value="p3-medium">P3-Medium</label>
							</div>
							<div class="radio">
								<label><input type="radio" name="priority" id="p4-low"
									value="p4-low">P4-Low</label>
							</div>
						</div>


					</div>
					<input type="hidden" name="projectname" value="${projectname}">
					<input type="hidden" name="template" value="${template}">
					<button type="submit" class="btn btn-primary btn-md btn-block"
						name="submit" id="submit" onclick="submitForm()">Submit</button>
				</form>
			</div>
			<div class="col-xs-3 col-xs-offset-1" style="background: lightgrey;">
				<h3>Previous Changes</h3>
				<ul>

					<li><a href="#">Commit 4</a></li>
					<li><a href="#">Commit 3</a></li>
					<li><a href="#">Commit 2</a></li>
					<li><a href="#">Commit 1</a></li>
				</ul>
				<form>
					<button type="submit" class="btn btn-primary btn-md btn-block"
						name="compare" value="compare">Compare</button>
				</form>
				<br>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			$('[data-toggle="tooltip"]').tooltip();
		});
		function viewPreviousChanges() {
			if (document.getElementById('open').checked) {
				document.getElementById('previousChanges').style.visibility = 'visible';
			} else if (document.getElementById('pendingReview').checked) {
				document.getElementById('previousChanges').style.visibility = 'visible';
			} else if (document.getElementById('closed').checked) {
				document.getElementById('previousChanges').style.visibility = 'visible';
			} else {
				document.getElementById('previousChanges').style.visibility = 'hidden';
			}
		}
		function onLoadBody() {
			var status = "${editstatus}";
			var role = "${userrole}";
			var statusvalue = "${(empty usecase.status) ? 'open' : usecase.status }";
            $('input[name="status"][value="' + statusvalue + '"]').prop('checked', true);
            var priorityvalue = "${(empty usecase.priority) ? 'p1-critical' : usecase.priority }";
            $('input[name="priority"][value="' + priorityvalue + '"]').prop('checked', true);
			if (status === "readonly") {
				document.getElementById('useCaseID').readOnly = true;
    			document.getElementById('intent').readOnly = true;
    			document.getElementById('scope').readOnly = true;
    			document.getElementById('level').readOnly = true;
    			document.getElementById('primaryActor').readOnly = true;
    			document.getElementById('secondaryActors').readOnly = true;
    			document.getElementById('diagram').disabled = true;
    			document.getElementById('preconditions').readOnly = true;
    			document.getElementById('postconditions').readOnly = true;
    			document.getElementById('open').disabled = true;
    			document.getElementById('pending review').disabled = true;
    			document.getElementById('closed').disabled = true;
    			document.getElementById('p3-medium').disabled = true;
    			document.getElementById('p4-low').disabled = true;
                document.getElementById('p1-critical').disabled = true;
                document.getElementById('p2-high').disabled = true;
				document.getElementById('submit').style.visibility='hidden';
			}
		}
		function submitForm() {
			var editstatus = "${editstatus}";
			if (editstatus === "new") {
				document.getElementById('usecaseform').action = "createusecasetemp2";
			} else if (editstatus === "edit") {
				document.getElementById('usecaseform').action = "editusecasetemp2";
			}
		}
	</script>
</body>
</html>

