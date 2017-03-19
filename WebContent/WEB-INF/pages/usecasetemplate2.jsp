<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

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

</head>
<body>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">Collaborative Design Tool</a>
		</div>
		<ul class="nav navbar-nav">
			<li><a href="projectlist">Home</a></li>
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

				<form action="choosetemplate" method="POST" style="margin: 20px">
					<div class="form-group row">
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a href="#" data-toggle="tooltip" data-placement="right" title="Unique Id for this use case" >ID</a></label>
						<div class="col-10">
							<input class="form-control" type="text" id="example-text-input"
								name="name">
						</div>
					</div>

					<div class="form-group row">
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a href="#" data-toggle="tooltip" data-placement="right" title="What do intend to do in this use case?" >Intent</label>
						<div class="col-10">
							<input class="form-control" type="text" id="example-text-input"
								name="name">
						</div>
					</div>
					<div class="form-group row">
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a href="#" data-toggle="tooltip" data-placement="right" title="What is the scpe for this use case?" >Scope</label>
						<div class="col-10">
							<textarea class="form-control" name="description" rows="5"
								cols="5"></textarea>
						</div>
					</div>
					<div class="form-group row">
						<label for="ProjectName" class="jumboHeading col-2 col-form-label">Level</label>
						<div class="col-10">
							<input class="form-control" type="text" id="example-text-input"
								name="name">
						</div>
					</div>
					<div class="form-group row">
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a href="#" data-toggle="tooltip" data-placement="right" title="A Person or a Software/Hardware system that interacts with your system to achieve the goal of use case" >Primary
							Actor</a></label>
						<div class="col-10">
							<input class="form-control" type="text" id="example-text-input"
								name="name">
						</div>
					</div>
					<div class="form-group row">
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a href="#" data-toggle="tooltip" data-placement="right" title="A Person or a Software/Hardware system that interacts with your system to achieve the goal of use case" >Secondary
							Actors</a></label>
						<div class="col-10">
							<textarea class="form-control" name="description" rows="5"
								cols="5"></textarea>
						</div>
					</div>
					<div class="form-group row">
						<label for="exampleInputFile"><a href="#" data-toggle="tooltip" data-placement="right" title="Upload any pictures required for this use case" >Upload Diagram</label> <input
							type="file" class="form-control-file" id="exampleInputFile"
							aria-describedby="fileHelp">

					</div>
					<div class="form-group row">
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a href="#" data-toggle="tooltip" data-placement="right" title="A list of conditions that must be true before the Use Case starts" >Pre-Conditions</a></label>
						<div class="col-10">
							<textarea class="form-control" name="description" rows="5"
								cols="5"></textarea>
						</div>
					</div>
					<div class="form-group row">
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a href="#" data-toggle="tooltip" data-placement="right" title="A list of conditions that must be true when the Use Case ends,
no matter which Scenario is executed." >Post-Conditions</a></label>
						<div class="col-10">
							<textarea class="form-control" name="description" rows="5"
								cols="5"></textarea>
						</div>
					</div>
					<div class="form-group row">
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a href="#" data-toggle="tooltip" data-placement="right" title="Who owns this use case in your project team?" >Owner</a></label>
						<div class="col-10">
							<input class="form-control" type="text" id="example-text-input"
								name="name">
						</div>
					</div>
					<div class="form-group row">
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a href="#" data-toggle="tooltip" data-placement="right" title="What point are we in developing this Use Case?" >Status</a></label>
						<div class="col-10">
							<div class="radio">
								<label class="radio-inline"><input type="radio"
									name="optradio" id="open" onclick="javascript:viewPreviousChanges()">Open</label>
							</div>
							<div class="radio">
								<label class="radio-inline"><input type="radio"
									name="optradio" id="pendingReview" onclick="javascript:viewPreviousChanges()">Pending Review</label>
							</div>
							<div class="radio">
								<label class="radio-inline"><input type="radio"
									name="optradio" id="closed" onclick="javascript:viewPreviousChanges()">Closed</label>
							</div>
						</div>
					</div>

					<div class="form-group row">
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a href="#" data-toggle="tooltip" data-placement="right" title="How important is the use case to this Project?" >Priority</a></label>
						<div class="col-10">
							<div class="radio">
								<label><input type="radio" name="optradio">P1-Critical</label>
							</div>
							<div class="radio">
								<label><input type="radio" name="optradio">P2-High</label>
							</div>
							<div class="radio">
								<label><input type="radio" name="optradio">P3-Medium</label>
							</div>
							<div class="radio">
								<label><input type="radio" name="optradio">P4-Low</label>
							</div>
						</div>


					</div>
					<button type="submit" class="btn btn-primary btn-md btn-block" name="submit"
						value="Next">Submit</button>
				</form>
			</div>
			<div class="col-xs-3 col-xs-offset-1" style="background: lightgrey;">
				<h3>Previous Changes</h3>
				<ul>
					<li><a href="#">View changes made by Development Manager</a></li>
					<li><a href="#">View changes made by Architect</a></li>
					<li><a href="#">View changes made by Solution Manager</a></li>
					<li><a href="#">View changes made by Designer</a></li>
				</ul>
			</div>
		</div>
	</div>
	<script type="text/javascript">
        $(document).ready(function(){
            $('[data-toggle="tooltip"]').tooltip();   
        });
        function viewPreviousChanges(){
            if(document.getElementById('open').checked){
                document.getElementById('previousChanges').style.visibility = 'visible';
            }
            else if(document.getElementById('pendingReview').checked){
                document.getElementById('previousChanges').style.visibility = 'visible';
            }
            else if(document.getElementById('closed').checked){
                document.getElementById('previousChanges').style.visibility = 'visible';
            }
            else{
                document.getElementById('previousChanges').style.visibility = 'hidden';
            }
        }
    </script>
</body>
</html>

