<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Use Case Template 1</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="bootstrap-theme/css/font-awesome.min.css" rel="stylesheet">
<link href="bootstrap-theme/css/style.css" rel="stylesheet">


<title>Dummy</title>
<style>
    a{
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
							<input class="form-control" type="text" 
								name="ID" id="0">
						</div>
					</div>
					<div class="form-group row">
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a href="#" data-toggle="tooltip" data-placement="right" title="Brief Description" >Description</a></label>
						<div class="col-10">
							<textarea class="form-control" name="description" rows="5"
								cols="5" id="0"></textarea>
						</div>
					</div>
					<div class="form-group row">
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a href="#" data-toggle="tooltip" data-placement="right" title="A Person or a Software/Hardware system that interacts with your system to achieve the goal of use case" >Primary Actor</a>
							</label>
						<div class="col-10">
							<input class="form-control" type="text" 
								name="primaryactor" id="0">
						</div>
					</div>
					<div class="form-group row">
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a href="#" data-toggle="tooltip" data-placement="right" title="A list of conditions that must be true before the Use Case starts" >Pre-Conditions</a></label>
						<div class="col-10">
							<textarea class="form-control" name="preconditions" rows="5"
								cols="5" id="0"></textarea>
						</div>
					</div>
					<div class="form-group row">
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a href="#" data-toggle="tooltip" data-placement="right" title="A list of conditions that must be true when the Use Case ends,
no matter which Scenario is executed." >Post-Conditions</a></label>
						<div class="col-10">
							<textarea class="form-control" name="postconditions" rows="5"
								cols="5" id="0"></textarea>
						</div>
					</div>
					<div class="form-group row">
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a href="#" data-toggle="tooltip" data-placement="right" title="How often will this use case be used" >Frequency
							of Use</a></label>
						<div class="col-10">
							<input class="form-control" type="text" 
								name="frequencyofuse" id="0">
						</div>
					</div>
					<div class="form-group row">
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a href="#" data-toggle="tooltip" data-placement="right" title="What point are we in developing this Use Case?" >Status</a></label>
						<div class="col-10">
							<div class="radio">
								<label ><input type="radio"
									name="optradio" id="open" onclick="javascript:viewPreviousChanges()">Open</label>
							</div>
							<div class="radio">
								<label ><input type="radio"
									name="optradio" id="pendingReview" onclick="javascript:viewPreviousChanges()">Pending Review</label>
							</div>
							<div class="radio">
								<label class="radio-inline"><input type="radio"
									name="optradio" id="closed" onclick="javascript:viewPreviousChanges()">Closed</label>
							</div>
						</div>
					</div>
					<div class="form-group row">
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a href="#" data-toggle="tooltip" data-placement="right" title="Who owns this use case in your project team?" >Owner</a></label>
						<div class="col-10">
							<input class="form-control" type="text" 
								name="name" value="John Doe" readonly>
						</div>
					</div>
					<div class="form-group row">
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a href="#" data-toggle="tooltip" data-placement="right" title="How important is the use case to this Project?" >Priority</a></label>
						<div class="col-10">
							<div class="radio">
								<label><input type="radio" name="optradio" id="0"
									value="p1-critical">P1-Critical</label>
							</div>
							<div class="radio">
								<label><input type="radio" name="optradio" id="0"
									value="p2-high">P2-High</label>
							</div>
							<div class="radio">
								<label><input type="radio" name="optradio" id="0"
									value="p3-medium">P3-Medium</label>
							</div>
							<div class="radio">
								<label><input type="radio" name="optradio" id="0"
									value="p4-low">P4-Low</label>
							</div>
						</div>
					</div>



					<button type="submit" class="btn btn-primary btn-md btn-block"
						name="submit" value="Next">Submit</button>

				</form>
			</div>

			<div class="col-xs-3 col-xs-offset-1" style="background: lightgrey; visibility:hidden" id="previousChanges">
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
        function onloadBody(){
            if((document .getElementsByTagName('INPUT').id = '0') || (document.getElementByTagName('INPUT').id='1')){
                document.getElementById('0').readOnly = false;
                document.getElementById('1').readOnly = false;
            }
            else if(document.getElementById('pendingReview').checked){
                document.getElementsByTagName('INPUT').readOnly = true;
            } 
            else if(document.getElementById('closed').checked){
                document.getElementsByTagName('INPUT').readOnly = true;
            }
            else{
                document.getElementsByTagName('INPUT').readOnly = true;
            }
        }
    </script>

</body>
</html>
</head>
<body>
  
</body>
</html>